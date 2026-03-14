// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Haitian Haitian Creole (`ht`).
class AppLocalizationsHt extends AppLocalizations {
  AppLocalizationsHt([String locale = 'ht']) : super(locale);

  @override
  String get appTitle => 'Classipod';

  @override
  String get menuButtonText => 'Meni';

  @override
  String get audioAccessPermissionTitle => 'Pèmisyon aksè odyo obligatwa';

  @override
  String get audioAccessPermissionContent =>
      'Tanpri bay dosye odyo aksè pou pèmèt nou jwe dosye mizik ou yo.';

  @override
  String get audioAccessPermissionPermanentlyDeniedTitle =>
      'Pèmisyon aksè odyo refize';

  @override
  String get audioAccessPermissionPermanentlyDeniedContent =>
      'Tanpri bay dosye odyo aksè pou app sa a nan anviwònman aparèy yo pou pèmèt nou jwe dosye mizik ou yo.';

  @override
  String get menuScreenTitle => 'Meni';

  @override
  String get musicMenuScreenTitle => 'Mizik';

  @override
  String get nowPlayingScreenTitle => 'Koulye a, jwe';

  @override
  String get shuffleSongsMenuTitle => 'Chante Shuffle';

  @override
  String get shuffleSettingTitle => 'Cheri';

  @override
  String get settingsScreenTitle => 'Se';

  @override
  String get aboutScreenTitle => 'De';

  @override
  String get coverFlowScreenTitle => 'Kouvri koule';

  @override
  String get artistsScreenTitle => 'Atis';

  @override
  String get albumsScreenTitle => 'Albòm';

  @override
  String get songsScreenTitle => 'Chante';

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
      one: '1 chante',
      zero: 'pa gen okenn chante',
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
      one: '1 album',
      zero: 'pa gen okenn albòm',
    );
    return '$_temp0';
  }

  @override
  String get genresScreenTitle => 'Estil';

  @override
  String get genreSongsScreenTitle => 'Chante genre';

  @override
  String get deviceColorSettingTitle => 'Koulè aparèy';

  @override
  String get touchScreenSettingTitle => 'Manyen ekran pèmèt';

  @override
  String get repeatModeSettingTitle => 'Repete';

  @override
  String get repeatModeOne => 'Younn';

  @override
  String get repeatModeAll => 'Tout';

  @override
  String get vibrateSettingTitle => 'Vibre';

  @override
  String get clickWheelSettingTitle => 'Klike sou wou son';

  @override
  String get splitScreenSettingTitle => 'Split mòd ekran';

  @override
  String get touchSoundsDialogTitle => 'Manyen son';

  @override
  String get touchSoundsDialogContent =>
      'Tanpri pèmèt son manyen soti nan anviwònman sistèm tande son yo klike sou wou yo';

  @override
  String get immersiveModeSettingTitle => 'Immersion mòd';

  @override
  String get showAppTutorialSettingTitle => 'Montre leson patikilye';

  @override
  String get changeDirectorySettingTitle => 'Chanje Anyè';

  @override
  String get donateSettingTitle => 'Bay';

  @override
  String get donateSettingDescription =>
      'Si ou renmen app sa a, tanpri konsidere bay.';

  @override
  String get versionAboutScreenTitle => 'Vèsyon';

  @override
  String get madeWithLoveTitle => 'Te fè ak ❤ pa';

  @override
  String get noMusicFilesFound => 'Pa gen mizik';

  @override
  String get noArtistsFound => 'Pa gen atis';

  @override
  String get noAlbumsFound => 'Pa gen albòm';

  @override
  String get unknownSong => 'Chante enkoni';

  @override
  String get unknownArtist => 'Unknown Atis';

  @override
  String get unknownAlbum => 'Album Unknown';

  @override
  String get unknownGenre => 'Unknown Stil';

  @override
  String get buttonConfirmText => 'Ok';

  @override
  String get tileValueOn => 'Sou';

  @override
  String get tileValueOff => 'Etenn';

  @override
  String get commonOfText => 'de';

  @override
  String get pageNotFoundText => 'Paj yo bay la pa te jwenn';

  @override
  String get commonErrorText => 'Erè';

  @override
  String get retryButtonText => 'Retabli';

  @override
  String get filePickerDialogTitle => 'Chwazi yon anyè pou eskane pou mizik';

  @override
  String get searchScreenTitle => 'Rechèch';

  @override
  String get searchEmptyText => 'Pa gen rezilta rechèch';

  @override
  String get searchResultsText => 'Rezilta rechèch:';

  @override
  String get resultsForText => 'Rezilta pou:';

  @override
  String get disableBatteryOptimizationTitle => 'Enfim optimize batri';

  @override
  String get disableBatteryOptimizationContent =>
      'Tanpri enfim optimize batri pou app sa a nan anviwònman aparèy yo pou pèmèt lèktur background nan mizik.';

  @override
  String get languageScreenTitle => 'Lang';

  @override
  String get themeSettingTitle => 'Tèm';

  @override
  String get silverDeviceColor => 'Ajan';

  @override
  String get blackDeviceColor => 'Nwa';

  @override
  String get lightThemeTitle => 'Limyè';

  @override
  String get darkThemeTitle => 'Fè nwa';

  @override
  String get orangeDeviceColor => 'Orange';

  @override
  String get yellowDeviceColor => 'Jòn';

  @override
  String get goldDeviceColor => 'Lò';

  @override
  String get purpleDeviceColor => 'Koulè wouj violèt';

  @override
  String get pinkDeviceColor => 'Woz';

  @override
  String get brownDeviceColor => 'Brown';

  @override
  String get redDeviceColor => 'Wouj';

  @override
  String get blueDeviceColor => 'Ble';

  @override
  String get limeDeviceColor => 'Lacho';

  @override
  String get greenDeviceColor => 'Vèt';

  @override
  String get resetSettingsTitle => 'Reyajiste anviwònman';

  @override
  String get browseArtist => 'Browse atis';

  @override
  String get browseAlbum => 'Browse Album';

  @override
  String get cancelText => 'Anile';

  @override
  String get playlistsScreenTitle => 'Playlists';

  @override
  String get addToOnTheGoPlaylist => 'Add to On-the-Go';

  @override
  String get addAlbumToOnTheGoPlaylist => 'Ajoute album nan sou-ale la';

  @override
  String get removeSongFromThePlaylist => 'Retire nan playlist la';

  @override
  String get allAlbums => 'Tout albòm';

  @override
  String get scanningMusicFiles => 'Fè enspeksyon dosye mizik';

  @override
  String get newPlaylist => 'Nouvo playlist';

  @override
  String get savePlaylist => 'Sove Playlist';

  @override
  String get clearPlaylist => 'Klè playlist';

  @override
  String get rescanMusicFilesSettingTitle => 'Dosye mizik rescan';

  @override
  String get deviceControlMenuTutorialText =>
      'Deplase gwo pous ou alalejè alantou wou a klike sou navige meni an';

  @override
  String get centerButtonMenuTutorialText =>
      'Peze bouton an Sant yo chwazi atik la meni make';

  @override
  String get playPauseMenuTutorialText =>
      'Peze bouton sa a pou jwe oswa pran yon poz yon chan';

  @override
  String get nextButtonMenuTutorialText =>
      'Peze bouton sa a pou sote nan pwochen chan an';

  @override
  String get previousButtonMenuTutorialText =>
      'Peze bouton sa a pou remonte oswa tounen nan chante anvan an';

  @override
  String get menuButtonTutorialText =>
      'Peze bouton sa a pou tounen nan meni anvan an. Ou te kapab peze epi kenbe li nan nenpòt ki lòt ekran dirèkteman ale nan meni prensipal la.';

  @override
  String get deviceScreenMenuTutorialText =>
      'Sa a se ekran an ekspozisyon. Touch ekran ak mòd ekran fann yo pèmèt pa default epi yo ka configuré plis nan anviwònman yo.';

  @override
  String get deviceControlNowPlayingTutorialText =>
      'Deplase gwo pous ou alantou wou a klike sou ajiste volim nan';

  @override
  String get centerButtonNowPlayingTutorialText =>
      'Peze bouton an sant sik nan chèche ba, baraj bar ak kurseur chefeul. Peze epi kenbe bouton an sant jwenn aksè nan opsyon adisyonèl.';

  @override
  String get nextButtonNowPlayingTutorialText =>
      'Peze epi kenbe bouton sa a vit pou pi devan chan an';

  @override
  String get previousButtonNowPlayingTutorialText =>
      'Peze epi kenbe bouton sa a pou remonte chan an';

  @override
  String get editSongOption => 'Edit chante';

  @override
  String get editSongScreenTitle => 'Edit chante';

  @override
  String get editSongNameLabel => 'Non chante';

  @override
  String get editSongArtistLabel => 'Non Atis';

  @override
  String get editSongAlbumLabel => 'Non album';

  @override
  String get editSongGenreLabel => 'Stil';

  @override
  String get editSongLyricsLabel => 'Lyrics';

  @override
  String get saveChangesButton => 'Sove Chanjman yo';

  @override
  String get clickWheelInputTextBarTutorialText =>
      'Deplase gwo pous ou alalejè alantou wou a klike sou mete aksan sou yon alfabè';

  @override
  String get centerButtonInputTextBarScreenTutorialText =>
      'Peze bouton sant lan pou chwazi alfabè a make';

  @override
  String get nextButtonInputTextBarTutorialText =>
      'Peze bouton sa a pou ajoute yon espas';

  @override
  String get previousButtonInputTextBarTutorialText =>
      'Peze bouton sa a pou efase dènye karaktè a';

  @override
  String get menuButtonInputTextBarTutorialText =>
      'Peze bouton sa a pou fèmen klavye a epi kominike avèk rezilta rechèch la';

  @override
  String get allSongs => 'Tout chante';

  @override
  String get clickWheelSizeSettingTitle => 'Klike sou gwosè wou';

  @override
  String get clickWheelSensitivitySettingTitle => 'Klike sou sansiblite wou';

  @override
  String get small => 'Piti';

  @override
  String get medium => 'Mwayen';

  @override
  String get large => 'Laj';

  @override
  String get veryLow => 'Trè ba';

  @override
  String get low => 'Ba';

  @override
  String get high => 'Wo';

  @override
  String get volumeModeSettingTitle => 'Mòd volim';

  @override
  String get appVolumeMode => 'App';

  @override
  String get systemVolumeMode => 'Sistèm';

  @override
  String get renamePlaylist => 'Chanje non playlist';

  @override
  String get excludeDirectoriesScreenTitle => 'Eskli repèrtwar';
}
