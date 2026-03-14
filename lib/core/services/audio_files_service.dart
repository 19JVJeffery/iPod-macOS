import 'dart:async';
import 'dart:collection';
import 'dart:io';

import 'package:classipod/core/constants/constants.dart';
import 'package:classipod/core/constants/online_audio_files_metadata.dart';
import 'package:classipod/core/models/music_metadata.dart';
import 'package:classipod/core/providers/device_directory_provider.dart';
import 'package:classipod/core/repositories/metadata_reader_repository.dart';
import 'package:classipod/features/app_startup/controllers/splash_controller.dart';
import 'package:classipod/features/music/playlist/models/playlist_model.dart';
import 'package:classipod/features/settings/controller/settings_preferences_controller.dart';
import 'package:classipod/features/settings/repository/settings_preferences_repository.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';
import 'package:on_audio_query/on_audio_query.dart' show OnAudioQuery;

final audioFilesServiceProvider =
    AsyncNotifierProvider<
      AudioFilesServiceNotifier,
      UnmodifiableListView<MusicMetadata>
    >(AudioFilesServiceNotifier.new);

enum MusicImportStatus {
  idle,
  picking,
  importing,
  cancelling,
  cancelled,
  completed,
  failed,
}

@immutable
class MusicImportState {
  final MusicImportStatus status;
  final String? directoryPath;
  final String? errorMessage;

  const MusicImportState({
    this.status = MusicImportStatus.idle,
    this.directoryPath,
    this.errorMessage,
  });

  bool get isImporting => status == MusicImportStatus.importing;
}

final musicImportStateProvider =
    NotifierProvider<MusicImportStateNotifier, MusicImportState>(
      MusicImportStateNotifier.new,
    );

class MusicImportStateNotifier extends Notifier<MusicImportState> {
  @override
  MusicImportState build() => const MusicImportState();

  void setStatus({
    required MusicImportStatus status,
    String? directoryPath,
    String? errorMessage,
  }) {
    state = MusicImportState(
      status: status,
      directoryPath: directoryPath,
      errorMessage: errorMessage,
    );
  }

  void reset() {
    state = const MusicImportState();
  }
}

class AudioFilesServiceNotifier
    extends AsyncNotifier<UnmodifiableListView<MusicMetadata>> {
  int _importToken = 0;
  bool _isImporting = false;
  UnmodifiableListView<MusicMetadata> _cachedMetadata =
      UnmodifiableListView([]);
  bool _suppressDirectoryPrompt = false;

  @override
  Future<UnmodifiableListView<MusicMetadata>> build() async {
    final metadata = await getAudioFilesMetadata();
    _cachedMetadata = metadata;
    return metadata;
  }

  Future<UnmodifiableListView<MusicMetadata>> getAudioFilesMetadata() async {
    state = const AsyncLoading();
    try {
      if (ref.read(settingsPreferencesControllerProvider).fetchOnlineMusic) {
        return UnmodifiableListView(onlineDemoAudioFilesMetaData);
      }
      // Fetch metadata from local files
      else {
        final Box<MusicMetadata> metadataBox = Hive.box<MusicMetadata>(
          Constants.metadataBoxName,
        );
        // Check if the metadata box is empty
        if (metadataBox.isEmpty) {
          if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
            if (_suppressDirectoryPrompt) {
              _suppressDirectoryPrompt = false;
              return UnmodifiableListView([]);
            }
            final String? lastDirectory = ref
                .read(settingsPreferencesRepositoryProvider)
                .getLastMusicDirectory();
            final String initialDirectory =
                lastDirectory ??
                ref
                    .read(deviceDirectoryProvider)
                    .requireValue
                    .musicFolderPath;
            final newDirectory = await FilePicker.platform.getDirectoryPath(
              dialogTitle: "Select Music Directory",
              lockParentWindow: true,
              initialDirectory: initialDirectory,
            );
            if (newDirectory != null) {
              final result = await compute(
                ref
                    .read(metadataReaderRepositoryProvider)
                    .extractMetadataFromDirectory,
                newDirectory,
              );
              await metadataBox.addAll(result);
              await ref
                  .read(settingsPreferencesRepositoryProvider)
                  .setLastMusicDirectory(directoryPath: newDirectory);
              return UnmodifiableListView(result);
            } else {
              return UnmodifiableListView([]);
            }
          } else if (Platform.isIOS) {
            final pickedFiles = await FilePicker.platform.pickFiles(
              allowMultiple: true,
              dialogTitle: "Pick Song Files",
            );

            if (pickedFiles == null || pickedFiles.files.isEmpty) {
              return UnmodifiableListView([]);
            }

            final result = await compute(
              ref
                  .read(metadataReaderRepositoryProvider)
                  .extractMetadataFromFiles,
              pickedFiles.files.map((f) => f.path!).toList(),
            );

            await metadataBox.addAll(result);
            return UnmodifiableListView(result);
          }
          // On Android Automatically Fetch Music Files
          else {
            final OnAudioQuery audioQuery = OnAudioQuery();
            final queriedSongs = await audioQuery.querySongs();

            final result = await compute(
              ref
                  .read(metadataReaderRepositoryProvider)
                  .extractMetadataFromFiles,
              queriedSongs.map((e) => e.data).toList(growable: false),
            );
            await metadataBox.addAll(result);
            return UnmodifiableListView(result);
          }
        }
        // Return cached metadata
        else {
          return UnmodifiableListView(metadataBox.values);
        }
      }
    } catch (e) {
      return UnmodifiableListView([]);
    }
  }

  Future<void> pickAndImportDirectory() async {
    if (_isImporting) {
      return;
    }

    ref.read(musicImportStateProvider.notifier).setStatus(
          status: MusicImportStatus.picking,
        );

    try {
      final String? lastDirectory = ref
          .read(settingsPreferencesRepositoryProvider)
          .getLastMusicDirectory();
      final String initialDirectory =
          lastDirectory ??
          ref.read(deviceDirectoryProvider).requireValue.musicFolderPath;
      final String? newDirectory = await FilePicker.platform.getDirectoryPath(
        dialogTitle: "Select Music Directory",
        lockParentWindow: true,
        initialDirectory: initialDirectory,
      );
      if (newDirectory == null || newDirectory.isEmpty) {
        ref.read(musicImportStateProvider.notifier).reset();
        return;
      }

      await importFromDirectory(newDirectory);
    } catch (e) {
      ref.read(musicImportStateProvider.notifier).setStatus(
            status: MusicImportStatus.failed,
            errorMessage: e.toString(),
          );
    }
  }

  Future<void> importFromDirectory(String directoryPath) async {
    if (_isImporting) {
      return;
    }

    _isImporting = true;
    _importToken += 1;
    final int importToken = _importToken;
    final previousMetadata = _cachedMetadata;

    ref.read(musicImportStateProvider.notifier).setStatus(
          status: MusicImportStatus.importing,
          directoryPath: directoryPath,
        );

    state = const AsyncLoading();

    try {
      final result = await compute(
        ref
            .read(metadataReaderRepositoryProvider)
            .extractMetadataFromDirectory,
        directoryPath,
      );

      if (importToken != _importToken) {
        return;
      }

      final metadataBox = Hive.box<MusicMetadata>(Constants.metadataBoxName);
      await metadataBox.clear();
      await metadataBox.addAll(result);
      _cachedMetadata = UnmodifiableListView(result);
      state = AsyncData(_cachedMetadata);

      await ref
          .read(settingsPreferencesRepositoryProvider)
          .setLastMusicDirectory(directoryPath: directoryPath);

      await ref.read(splashControllerProvider.notifier).initializeApp();
      ref.read(musicImportStateProvider.notifier).reset();
    } catch (e) {
      if (importToken != _importToken) {
        return;
      }
      _cachedMetadata = previousMetadata;
      state = AsyncData(previousMetadata);
      ref.read(musicImportStateProvider.notifier).setStatus(
            status: MusicImportStatus.failed,
            directoryPath: directoryPath,
            errorMessage: e.toString(),
          );
    } finally {
      if (importToken == _importToken) {
        _isImporting = false;
      }
    }
  }

  Future<void> cancelImport() async {
    if (!_isImporting) {
      return;
    }

    _importToken += 1;
    _isImporting = false;

    ref.read(musicImportStateProvider.notifier).setStatus(
          status: MusicImportStatus.cancelled,
        );
    state = AsyncData(_cachedMetadata);
  }

  Future<void> purgeLibrary({bool clearPlaylists = true}) async {
    if (_isImporting) {
      await cancelImport();
    }

    _suppressDirectoryPrompt = true;
    await Hive.box<MusicMetadata>(Constants.metadataBoxName).clear();
    if (clearPlaylists) {
      await Hive.box<PlaylistModel>(Constants.playlistBoxName).clear();
    }

    _cachedMetadata = UnmodifiableListView([]);
    state = AsyncData(_cachedMetadata);

    await ref
        .read(settingsPreferencesRepositoryProvider)
        .setLastMusicDirectory(directoryPath: null);

    ref.read(musicImportStateProvider.notifier).reset();

    await ref.read(splashControllerProvider.notifier).initializeApp();
  }
}
