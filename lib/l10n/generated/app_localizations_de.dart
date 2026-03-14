// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class AppLocalizationsDe extends AppLocalizations {
  AppLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get appTitle => 'Classipod';

  @override
  String get menuButtonText => 'MENÜ';

  @override
  String get audioAccessPermissionTitle =>
      'Erforderliche Genehmigung für Audiozugriff';

  @override
  String get audioAccessPermissionContent =>
      'Bitte gewähren Sie Zugriff auf Audiodateien, um das Abspielen von Musikdateien zu ermöglichen.';

  @override
  String get audioAccessPermissionPermanentlyDeniedTitle =>
      'Audiozugriffsberechtigung verweigert';

  @override
  String get audioAccessPermissionPermanentlyDeniedContent =>
      'Bitte gewähren Sie Zugriff auf Audiodateien für diese App in den Geräteeinstellungen, um uns das Abspielen von Musikdateien zu ermöglichen.';

  @override
  String get menuScreenTitle => 'Menü';

  @override
  String get musicMenuScreenTitle => 'Musik';

  @override
  String get nowPlayingScreenTitle => 'Derzeitige Wiedergabe';

  @override
  String get shuffleSongsMenuTitle => 'Zufällige Titel';

  @override
  String get shuffleSettingTitle => 'Zufall';

  @override
  String get settingsScreenTitle => 'Einstellungen';

  @override
  String get aboutScreenTitle => 'Über';

  @override
  String get coverFlowScreenTitle => 'Cover Flow';

  @override
  String get artistsScreenTitle => 'Künstler';

  @override
  String get albumsScreenTitle => 'Alben';

  @override
  String get songsScreenTitle => 'Lieder';

  @override
  String nSongs(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countString Lieder',
      one: '1 Lied',
      zero: 'keine Lieder',
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
      other: '$countString Alben',
      one: '1 Album',
      zero: 'keine Alben',
    );
    return '$_temp0';
  }

  @override
  String get genresScreenTitle => 'Musikrichtungen';

  @override
  String get genreSongsScreenTitle => 'Lieder der Musikrichtung';

  @override
  String get deviceColorSettingTitle => 'Gerätefarbe';

  @override
  String get touchScreenSettingTitle => 'Touchscreen';

  @override
  String get repeatModeSettingTitle => 'Wiederholen';

  @override
  String get repeatModeOne => 'Einmal';

  @override
  String get repeatModeAll => 'Alle';

  @override
  String get vibrateSettingTitle => 'Vibrieren';

  @override
  String get clickWheelSettingTitle => 'Klickradgeräusche';

  @override
  String get splitScreenSettingTitle => 'Splitscreenmodus';

  @override
  String get touchSoundsDialogTitle => 'Tastengeräusche';

  @override
  String get touchSoundsDialogContent =>
      'Bitte aktivieren Sie Ton bei Tastendruck in den Systemeinstellungen, um die Klickradgeräusche zu hören';

  @override
  String get immersiveModeSettingTitle => 'Immersiver Modus';

  @override
  String get showAppTutorialSettingTitle => 'Tutorial anzeigen';

  @override
  String get changeDirectorySettingTitle => 'Verzeichnis ändern';

  @override
  String get donateSettingTitle => 'Spenden';

  @override
  String get donateSettingDescription =>
      'Wenn Ihnen diese App gefällt, ziehen Sie bitte eine Spende in Betracht.';

  @override
  String get versionAboutScreenTitle => 'Version';

  @override
  String get madeWithLoveTitle => 'Gemacht mit ❤️ von';

  @override
  String get noMusicFilesFound => 'Keine Musik';

  @override
  String get noArtistsFound => 'Keine Interpreten';

  @override
  String get noAlbumsFound => 'Keine Alben';

  @override
  String get unknownSong => 'Unbekanntes Lied';

  @override
  String get unknownArtist => 'Unbekannter Interpret';

  @override
  String get unknownAlbum => 'Unbekanntes Album';

  @override
  String get unknownGenre => 'Unbekannte Musikrichtung';

  @override
  String get buttonConfirmText => 'OK';

  @override
  String get tileValueOn => 'An';

  @override
  String get tileValueOff => 'Aus';

  @override
  String get commonOfText => 'von';

  @override
  String get pageNotFoundText => 'Die angeforderte Seite wurde nicht gefunden';

  @override
  String get commonErrorText => 'Fehler';

  @override
  String get retryButtonText => 'Erneut versuchen';

  @override
  String get filePickerDialogTitle =>
      'Wählen Sie ein Verzeichnis zum Scannen nach Musik';

  @override
  String get searchScreenTitle => 'Suche';

  @override
  String get searchEmptyText => 'Keine Suchergebnisse';

  @override
  String get searchResultsText => 'Suchergebnisse:';

  @override
  String get resultsForText => 'Ergebnisse für:';

  @override
  String get disableBatteryOptimizationTitle =>
      'Batterieoptimierung deaktivieren';

  @override
  String get disableBatteryOptimizationContent =>
      'Bitte deaktivieren Sie die Batterieoptimierung für diese App in den Geräteeinstellungen, um die Hintergrundwiedergabe von Musik zu ermöglichen.';

  @override
  String get languageScreenTitle => 'Sprache';

  @override
  String get themeSettingTitle => 'Thema';

  @override
  String get silverDeviceColor => 'Silber';

  @override
  String get blackDeviceColor => 'Schwarz';

  @override
  String get lightThemeTitle => 'Licht';

  @override
  String get darkThemeTitle => 'Dunkel';

  @override
  String get orangeDeviceColor => 'Orange';

  @override
  String get yellowDeviceColor => 'Gelb';

  @override
  String get goldDeviceColor => 'Gold';

  @override
  String get purpleDeviceColor => 'Lila';

  @override
  String get pinkDeviceColor => 'Rosa';

  @override
  String get brownDeviceColor => 'Braun';

  @override
  String get redDeviceColor => 'Rot';

  @override
  String get blueDeviceColor => 'Blau';

  @override
  String get limeDeviceColor => 'Kalk';

  @override
  String get greenDeviceColor => 'Grün';

  @override
  String get resetSettingsTitle => 'Einstellungen zurücksetzen';

  @override
  String get browseArtist => 'Interpreten durchsuchen';

  @override
  String get browseAlbum => 'Alben durchsuchen';

  @override
  String get cancelText => 'Abbrechen';

  @override
  String get playlistsScreenTitle => 'Wiedergabelisten';

  @override
  String get addToOnTheGoPlaylist => 'Zur On-The-Go-Wiedergabeliste hinzufügen';

  @override
  String get addAlbumToOnTheGoPlaylist =>
      'Album zur On-The-Go-Wiedergabeliste hinzufügen';

  @override
  String get removeSongFromThePlaylist => 'Aus der Wiedergabeliste entfernen';

  @override
  String get allAlbums => 'Alle Alben';

  @override
  String get scanningMusicFiles => 'Musikdateien werden gescannt';

  @override
  String get newPlaylist => 'Neue Wiedergabeliste';

  @override
  String get savePlaylist => 'Wiedergabeliste speichern';

  @override
  String get clearPlaylist => 'Wiedergabeliste löschen';

  @override
  String get rescanMusicFilesSettingTitle => 'Musikdateien erneut scannen';

  @override
  String get deviceControlMenuTutorialText =>
      'Bewegen Sie Ihren Daumen leicht um das Klickrad, um durch das Menü zu navigieren';

  @override
  String get centerButtonMenuTutorialText =>
      'Drücken Sie die Mitteltaste, um das hervorgehobene Menüelement auszuwählen';

  @override
  String get playPauseMenuTutorialText =>
      'Drücken Sie diese Taste, um ein Lied abzuspielen oder zu pausieren';

  @override
  String get nextButtonMenuTutorialText =>
      'Drücken Sie diese Taste, um zum nächsten Lied zu springen';

  @override
  String get previousButtonMenuTutorialText =>
      'Drücken Sie diese Taste, um zurückzuspulen oder zum vorherigen Lied zu gehen';

  @override
  String get menuButtonTutorialText =>
      'Drücken Sie diese Taste, um zum vorherigen Menü zurückzukehren. Sie können sie von jedem anderen Bildschirm aus gedrückt halten, um direkt zum Hauptmenü zu gelangen.';

  @override
  String get deviceScreenMenuTutorialText =>
      'Dies ist der Anzeigebildschirm. Touchscreen und Splitscreenmodus sind standardmäßig aktiviert und können in den Einstellungen weiter konfiguriert werden.';

  @override
  String get deviceControlNowPlayingTutorialText =>
      'Bewegen Sie Ihren Daumen um das Klickrad, um die Lautstärke anzupassen';

  @override
  String get centerButtonNowPlayingTutorialText =>
      'Drücken Sie die Mitteltaste, um zwischen Suchleiste, Schieberegler und Zufalls-Regler zu wechseln. Halten Sie die Mitteltaste gedrückt, um auf zusätzliche Optionen zuzugreifen.';

  @override
  String get nextButtonNowPlayingTutorialText =>
      'Halten Sie diese Taste gedrückt, um das Lied vorzuspulen';

  @override
  String get previousButtonNowPlayingTutorialText =>
      'Halten Sie diese Taste gedrückt, um das Lied zurückzuspulen';

  @override
  String get editSongOption => 'Lied bearbeiten';

  @override
  String get editSongScreenTitle => 'Lied bearbeiten';

  @override
  String get editSongNameLabel => 'Songname';

  @override
  String get editSongArtistLabel => 'Künstlernamen';

  @override
  String get editSongAlbumLabel => 'Albumname';

  @override
  String get editSongGenreLabel => 'Genre';

  @override
  String get editSongLyricsLabel => 'Text';

  @override
  String get saveChangesButton => 'Änderungen speichern';

  @override
  String get clickWheelInputTextBarTutorialText =>
      'Bewegen Sie Ihren Daumen leicht um das Klickrad, um einen Buchstaben hervorzuheben';

  @override
  String get centerButtonInputTextBarScreenTutorialText =>
      'Drücken Sie die Mitteltaste, um den hervorgehobenen Buchstaben auszuwählen';

  @override
  String get nextButtonInputTextBarTutorialText =>
      'Drücken Sie diese Taste, um ein Leerzeichen hinzuzufügen';

  @override
  String get previousButtonInputTextBarTutorialText =>
      'Drücken Sie diese Taste, um das letzte Zeichen zu löschen';

  @override
  String get menuButtonInputTextBarTutorialText =>
      'Drücken Sie diese Taste, um die Tastatur zu schließen und mit den Suchergebnissen zu interagieren';

  @override
  String get allSongs => 'Alle Lieder';

  @override
  String get clickWheelSizeSettingTitle => 'Klickradgröße';

  @override
  String get clickWheelSensitivitySettingTitle => 'Klickradempfindlichkeit';

  @override
  String get small => 'Klein';

  @override
  String get medium => 'Mittel';

  @override
  String get large => 'Groß';

  @override
  String get veryLow => 'Sehr niedrig';

  @override
  String get low => 'Niedrig';

  @override
  String get high => 'Hoch';

  @override
  String get volumeModeSettingTitle => 'Lautstärkemodus';

  @override
  String get appVolumeMode => 'App';

  @override
  String get systemVolumeMode => 'System';

  @override
  String get renamePlaylist => 'Wiedergabeliste umbenennen';

  @override
  String get excludeDirectoriesScreenTitle => 'Verzeichnisse ausschließen';
}
