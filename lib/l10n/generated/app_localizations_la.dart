// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Latin (`la`).
class AppLocalizationsLa extends AppLocalizations {
  AppLocalizationsLa([String locale = 'la']) : super(locale);

  @override
  String get appTitle => 'Classipod';

  @override
  String get menuButtonText => 'Menu';

  @override
  String get audioAccessPermissionTitle => 'Audio obvius permission required';

  @override
  String get audioAccessPermissionContent =>
      'Quaeso concessione audio files aditus ut sino nobis ludere vestri musica files.';

  @override
  String get audioAccessPermissionPermanentlyDeniedTitle =>
      'Audio obvius permission negavit';

  @override
  String get audioAccessPermissionPermanentlyDeniedContent =>
      'Quaeso concessione audio files aditum hoc app in fabrica occasus ut liceat nobis ludere vestri musica files.';

  @override
  String get menuScreenTitle => 'Menu';

  @override
  String get musicMenuScreenTitle => 'Musica';

  @override
  String get nowPlayingScreenTitle => 'Nunc ludens';

  @override
  String get shuffleSongsMenuTitle => 'Shuffle carminum';

  @override
  String get shuffleSettingTitle => 'TERGUM';

  @override
  String get settingsScreenTitle => 'Occasus';

  @override
  String get aboutScreenTitle => 'De';

  @override
  String get coverFlowScreenTitle => 'CREPO';

  @override
  String get artistsScreenTitle => 'Artists';

  @override
  String get albumsScreenTitle => 'Albums';

  @override
  String get songsScreenTitle => 'Carminum';

  @override
  String nSongs(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countString Songs',
      one: '1 Song',
      zero: 'No Songs',
    );
    return '$_temp0';
  }

  @override
  String nAlbums(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countString Albums',
      one: '1 Album',
      zero: 'No Albums',
    );
    return '$_temp0';
  }

  @override
  String get genresScreenTitle => 'Genera';

  @override
  String get genreSongsScreenTitle => 'Genre carminum';

  @override
  String get deviceColorSettingTitle => 'COGNUM';

  @override
  String get touchScreenSettingTitle => 'Tactus screen enabled';

  @override
  String get repeatModeSettingTitle => 'Repetitor';

  @override
  String get repeatModeOne => 'Unus';

  @override
  String get repeatModeAll => 'Cunctis';

  @override
  String get vibrateSettingTitle => 'Vibro';

  @override
  String get clickWheelSettingTitle => 'Click rota sonos';

  @override
  String get splitScreenSettingTitle => 'Scinditur screen modus';

  @override
  String get touchSoundsDialogTitle => 'SINGULTO';

  @override
  String get touchSoundsDialogContent =>
      'Placere enable tactus sonos a ratio occasus ut audire click rota sonos';

  @override
  String get immersiveModeSettingTitle => 'Immersive modus';

  @override
  String get showAppTutorialSettingTitle => 'PRAETENDO';

  @override
  String get changeDirectorySettingTitle => 'Mutare Directory';

  @override
  String get donateSettingTitle => 'DONO';

  @override
  String get donateSettingDescription =>
      'Si vis hoc app, placere consideramus donando.';

  @override
  String get versionAboutScreenTitle => 'Verso';

  @override
  String get madeWithLoveTitle => 'Cum ❤️ per';

  @override
  String get noMusicFilesFound => 'Non musica';

  @override
  String get noArtistsFound => 'Nullus artists';

  @override
  String get noAlbumsFound => 'Non albums';

  @override
  String get unknownSong => 'Ignotum';

  @override
  String get unknownArtist => 'Ignota artifex';

  @override
  String get unknownAlbum => 'Ignotus';

  @override
  String get unknownGenre => 'Ignota genre';

  @override
  String get buttonConfirmText => 'Ok';

  @override
  String get tileValueOn => 'In';

  @override
  String get tileValueOff => 'Off';

  @override
  String get commonOfText => 'ex';

  @override
  String get pageNotFoundText => 'Et data pagina non inveni';

  @override
  String get commonErrorText => 'Error';

  @override
  String get retryButtonText => 'Retry';

  @override
  String get filePickerDialogTitle => 'Select a Directory ad Scan ad Musica';

  @override
  String get searchScreenTitle => 'PRAETENDO';

  @override
  String get searchEmptyText => 'Nulla Search Results';

  @override
  String get searchResultsText => 'Search results:';

  @override
  String get resultsForText => 'Results for:';

  @override
  String get disableBatteryOptimizationTitle => 'Disable altilium Optimization';

  @override
  String get disableBatteryOptimizationContent =>
      'Placere disable altilium Optimization hoc app in fabrica occasus ut background playback ex musica.';

  @override
  String get languageScreenTitle => 'LENTITUDO';

  @override
  String get themeSettingTitle => 'Theme';

  @override
  String get silverDeviceColor => 'Argentum';

  @override
  String get blackDeviceColor => 'Niger';

  @override
  String get lightThemeTitle => 'lux';

  @override
  String get darkThemeTitle => 'Dark';

  @override
  String get orangeDeviceColor => 'Orange';

  @override
  String get yellowDeviceColor => 'flavum';

  @override
  String get goldDeviceColor => 'Aurum';

  @override
  String get purpleDeviceColor => 'Purpura';

  @override
  String get pinkDeviceColor => 'Pink';

  @override
  String get brownDeviceColor => 'Brown';

  @override
  String get redDeviceColor => 'Red';

  @override
  String get blueDeviceColor => 'Blue';

  @override
  String get limeDeviceColor => 'tilia';

  @override
  String get greenDeviceColor => 'Viridis';

  @override
  String get resetSettingsTitle => 'Reset Occasus';

  @override
  String get browseArtist => 'Artist Browse';

  @override
  String get browseAlbum => 'Browse album';

  @override
  String get cancelText => 'Inrito';

  @override
  String get playlistsScreenTitle => 'Playlists';

  @override
  String get addToOnTheGoPlaylist => 'Addere ad-in-Go';

  @override
  String get addAlbumToOnTheGoPlaylist => 'Add to-ut on-ire';

  @override
  String get removeSongFromThePlaylist => 'Remove a playlist';

  @override
  String get allAlbums => 'Omnes albums';

  @override
  String get scanningMusicFiles => 'Scanning musica files';

  @override
  String get newPlaylist => 'Novum playlist';

  @override
  String get savePlaylist => 'Nisi playlist';

  @override
  String get clearPlaylist => 'Patet playlist';

  @override
  String get rescanMusicFilesSettingTitle => 'Rescan Musica files';

  @override
  String get deviceControlMenuTutorialText =>
      'Movere pollice leviter circa click rota ad navigare menu';

  @override
  String get centerButtonMenuTutorialText =>
      'Torcular ad Centrum Puga pyga eligere in luce menu item';

  @override
  String get playPauseMenuTutorialText =>
      'Torcular quod conjunctionem ad ludere vel mora canticum';

  @override
  String get nextButtonMenuTutorialText =>
      'Torcular quod conjunctionem ad skip to altera carmen';

  @override
  String get previousButtonMenuTutorialText =>
      'Torcular quod conjunctionem ad rewind aut ire ad priorem carmen';

  @override
  String get menuButtonTutorialText =>
      'Torcular quod conjunctionem ut ad priorem menu. Potuit premere et tenere ab aliquo screen ad directe ad pelagus menu.';

  @override
  String get deviceScreenMenuTutorialText =>
      'Hoc est ostentationem screen. Tactus screen et split screen modus sunt enabled per default et potest configurari longius in occasus.';

  @override
  String get deviceControlNowPlayingTutorialText =>
      'Movere pollicem circa click rota ad adjust in volumine';

  @override
  String get centerButtonNowPlayingTutorialText =>
      'Torcular ad centrum puga pyga ad cycle per quaerite bar, scrubber talea et shuffle labor lapsus. Torcular et tenere centrum puga accedere additional optiones.';

  @override
  String get nextButtonNowPlayingTutorialText =>
      'Torcular et hunc felis ieiunium deinceps carmen';

  @override
  String get previousButtonNowPlayingTutorialText =>
      'Torcular et teneat conjunctionem rewind carmen';

  @override
  String get editSongOption => 'Edit Song';

  @override
  String get editSongScreenTitle => 'Edit Song';

  @override
  String get editSongNameLabel => 'Canticum Nomen';

  @override
  String get editSongArtistLabel => 'Artifex Names';

  @override
  String get editSongAlbumLabel => 'Album Name';

  @override
  String get editSongGenreLabel => 'Genre';

  @override
  String get editSongLyricsLabel => 'Lyrics';

  @override
  String get saveChangesButton => 'Servare Mutationes';

  @override
  String get clickWheelInputTextBarTutorialText =>
      'Movere pollice leviter circa click rota ad highlight a alphabeto';

  @override
  String get centerButtonInputTextBarScreenTutorialText =>
      'Torcular ad Centrum Puga pyga eligere in luce alphabet';

  @override
  String get nextButtonInputTextBarTutorialText =>
      'Torcular quod conjunctionem addere spatium';

  @override
  String get previousButtonInputTextBarTutorialText =>
      'Torcular quod conjunctionem delere ultimum mores';

  @override
  String get menuButtonInputTextBarTutorialText =>
      'Torcular quod conjunctionem claudere keyboard et penitus per search results';

  @override
  String get allSongs => 'Omnes carmina';

  @override
  String get clickWheelSizeSettingTitle => 'Click rota magnitudine';

  @override
  String get clickWheelSensitivitySettingTitle => 'Click rota sensitivity';

  @override
  String get small => 'Parvus';

  @override
  String get medium => 'Medium';

  @override
  String get large => 'Magna';

  @override
  String get veryLow => 'Minimum';

  @override
  String get low => 'Humilis';

  @override
  String get high => 'Altum';

  @override
  String get volumeModeSettingTitle => 'Volumen modus';

  @override
  String get appVolumeMode => 'App';

  @override
  String get systemVolumeMode => 'Ratio';

  @override
  String get renamePlaylist => 'Rename playlist';

  @override
  String get excludeDirectoriesScreenTitle => 'Excludere directoriis';
}
