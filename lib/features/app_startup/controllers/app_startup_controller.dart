import 'dart:async';

import 'package:classipod/core/constants/constants.dart';
import 'package:classipod/core/models/music_metadata.dart';
import 'package:classipod/core/providers/device_directory_provider.dart';
import 'package:classipod/core/providers/shared_preferences_with_cache_provider.dart';
import 'package:classipod/features/music/playlist/models/playlist_model.dart';
import 'package:classipod/features/settings/controller/settings_preferences_controller.dart';
import 'package:classipod/features/settings/models/exclude_directory_model.dart';
import 'package:classipod/hive/hive_registrar.g.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';

final appStartupControllerProvider = FutureProvider<void>((ref) async {
  await Future.wait([
    ref.watch(sharedPreferencesWithCacheProvider.future),
    Hive.initFlutter("ClassiPod"),
  ]);
  unawaited(ref.watch(deviceDirectoryProvider.future));
  Hive.registerAdapters();
  await Future.wait([
    Hive.openBox<MusicMetadata>(Constants.metadataBoxName),
    Hive.openBox<PlaylistModel>(Constants.playlistBoxName),
    Hive.openBox<ExcludeDirectoryModel>(Constants.excludedDirectoriesBoxName),
  ]);
  ref
      .read(settingsPreferencesControllerProvider.notifier)
      .setAudioSource(isOnlineAudioSource: false);
});
