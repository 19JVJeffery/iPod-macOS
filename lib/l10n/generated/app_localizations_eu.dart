// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Basque (`eu`).
class AppLocalizationsEu extends AppLocalizations {
  AppLocalizationsEu([String locale = 'eu']) : super(locale);

  @override
  String get appTitle => 'Klaserdod';

  @override
  String get menuButtonText => 'Menu';

  @override
  String get audioAccessPermissionTitle =>
      'Audiorako sarbide baimena beharrezkoa da';

  @override
  String get audioAccessPermissionContent =>
      'Mesedez, eman audio fitxategiak sarbidea zure musika fitxategiak erreproduzitzeko.';

  @override
  String get audioAccessPermissionPermanentlyDeniedTitle =>
      'Audio sarbide baimena ukatu da';

  @override
  String get audioAccessPermissionPermanentlyDeniedContent =>
      'Mesedez, eman audio fitxategiak aplikazio honetarako sarbidea gailuaren ezarpenetan zure musika fitxategiak erreproduzitzeko.';

  @override
  String get menuScreenTitle => 'Menu';

  @override
  String get musicMenuScreenTitle => 'Musika';

  @override
  String get nowPlayingScreenTitle => 'Orain jolasten';

  @override
  String get shuffleSongsMenuTitle => 'Abestiak nahastu';

  @override
  String get shuffleSettingTitle => 'Nahastu';

  @override
  String get settingsScreenTitle => 'Ezarpen';

  @override
  String get aboutScreenTitle => 'Ei buruz';

  @override
  String get coverFlowScreenTitle => 'Azal-fluxua';

  @override
  String get artistsScreenTitle => 'Artistak';

  @override
  String get albumsScreenTitle => 'Albumak';

  @override
  String get songsScreenTitle => 'Abestiak';

  @override
  String nSongs(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countString abestiak',
      one: '1 Song',
      zero: 'ez Abestiak',
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
      other: '$countString albumak',
      one: '1 album',
      zero: 'Ez albumak',
    );
    return '$_temp0';
  }

  @override
  String get genresScreenTitle => 'Generoak';

  @override
  String get genreSongsScreenTitle => 'Generoko abestiak';

  @override
  String get deviceColorSettingTitle => 'Gailuaren kolorea';

  @override
  String get touchScreenSettingTitle => 'Ukipen-pantaila gaituta dago';

  @override
  String get repeatModeSettingTitle => 'Berriz egin';

  @override
  String get repeatModeOne => 'Bat';

  @override
  String get repeatModeAll => 'Guzti';

  @override
  String get vibrateSettingTitle => 'Dardaratu';

  @override
  String get clickWheelSettingTitle => 'Egin klik gurpilaren soinuak';

  @override
  String get splitScreenSettingTitle => 'Split pantaila modua';

  @override
  String get touchSoundsDialogTitle => 'Ukitu Soinuak';

  @override
  String get touchSoundsDialogContent =>
      'Mesedez, gaitu ukitu soinuak sistemaren ezarpenetatik klik egiteko gurpilaren soinuak entzuteko';

  @override
  String get immersiveModeSettingTitle => 'Murgileko modua';

  @override
  String get showAppTutorialSettingTitle => 'Erakutsi tutorial';

  @override
  String get changeDirectorySettingTitle => 'Aldatu direktorio';

  @override
  String get donateSettingTitle => 'Eman';

  @override
  String get donateSettingDescription =>
      'Aplikazio hau nahi baduzu, kontuan hartu dohaintza.';

  @override
  String get versionAboutScreenTitle => 'Bertsio';

  @override
  String get madeWithLoveTitle => '❤️-rekin egina';

  @override
  String get noMusicFilesFound => 'Musika ez';

  @override
  String get noArtistsFound => 'Artistarik ez';

  @override
  String get noAlbumsFound => 'Albumerik ez';

  @override
  String get unknownSong => 'Abesti ezezaguna';

  @override
  String get unknownArtist => 'Artista ezezaguna';

  @override
  String get unknownAlbum => 'Album ezezaguna';

  @override
  String get unknownGenre => 'Genero ezezaguna';

  @override
  String get buttonConfirmText => 'Jaizos';

  @override
  String get tileValueOn => '-En gainean';

  @override
  String get tileValueOff => 'Amatatuta';

  @override
  String get commonOfText => '-ren';

  @override
  String get pageNotFoundText => 'Emandako orria ez da aurkitu';

  @override
  String get commonErrorText => 'Errakuntza';

  @override
  String get retryButtonText => 'Berrirohartu';

  @override
  String get filePickerDialogTitle =>
      'Hautatu direktorio bat musika eskaneatzeko';

  @override
  String get searchScreenTitle => 'Araketa';

  @override
  String get searchEmptyText => 'Ez da bilaketaren emaitzarik';

  @override
  String get searchResultsText => 'Bilaketaren emaitzak:';

  @override
  String get resultsForText => 'Emaitzak:';

  @override
  String get disableBatteryOptimizationTitle =>
      'Desgaitu bateriaren optimizazioa';

  @override
  String get disableBatteryOptimizationContent =>
      'Mesedez, desgaitu aplikazio honetarako bateriaren optimizazioa gailuaren ezarpenetan, musika atzeko planoa erreproduzitzeko baimena emateko.';

  @override
  String get languageScreenTitle => 'Mintzaira';

  @override
  String get themeSettingTitle => 'Gaia';

  @override
  String get silverDeviceColor => 'Zilar';

  @override
  String get blackDeviceColor => 'Beltz';

  @override
  String get lightThemeTitle => 'Argia';

  @override
  String get darkThemeTitle => 'Iluna';

  @override
  String get orangeDeviceColor => 'Laranja';

  @override
  String get yellowDeviceColor => 'Horia';

  @override
  String get goldDeviceColor => 'Urrea';

  @override
  String get purpleDeviceColor => 'Morea';

  @override
  String get pinkDeviceColor => 'Arrosa';

  @override
  String get brownDeviceColor => 'Marroia';

  @override
  String get redDeviceColor => 'Gorria';

  @override
  String get blueDeviceColor => 'Urdina';

  @override
  String get limeDeviceColor => 'Karea';

  @override
  String get greenDeviceColor => 'Berdea';

  @override
  String get resetSettingsTitle => 'Berrezarri ezarpenak';

  @override
  String get browseArtist => 'Arakatu artista';

  @override
  String get browseAlbum => 'Arakatu album';

  @override
  String get cancelText => 'Indargabetu';

  @override
  String get playlistsScreenTitle => 'Ikillariak';

  @override
  String get addToOnTheGoPlaylist => 'Gehitu on-the-go';

  @override
  String get addAlbumToOnTheGoPlaylist => 'Gehitu albumean on-the-go';

  @override
  String get removeSongFromThePlaylist => 'Kendu erreprodukzio-zerrendatik';

  @override
  String get allAlbums => 'Album guztiak';

  @override
  String get scanningMusicFiles => 'Musika fitxategiak eskaneatzea';

  @override
  String get newPlaylist => 'Erreprodukzio zerrenda berria';

  @override
  String get savePlaylist => 'Gorde erreprodukzio zerrenda';

  @override
  String get clearPlaylist => 'Erreproduzitu zerrenda garbia';

  @override
  String get rescanMusicFilesSettingTitle => 'Berreskuratu musika fitxategiak';

  @override
  String get deviceControlMenuTutorialText =>
      'Eraman hatza arinki klik gurpilaren inguruan menuan nabigatzeko';

  @override
  String get centerButtonMenuTutorialText =>
      'Sakatu erdiko botoia nabarmendutako menuko elementua hautatzeko';

  @override
  String get playPauseMenuTutorialText =>
      'Sakatu botoi hau abesti bat erreproduzitzeko edo pausatzeko';

  @override
  String get nextButtonMenuTutorialText =>
      'Sakatu botoi hau hurrengo abestira joateko';

  @override
  String get previousButtonMenuTutorialText =>
      'Sakatu botoi hau berriro itzultzeko edo aurreko abestira itzultzeko';

  @override
  String get menuButtonTutorialText =>
      'Sakatu botoi hau aurreko menura itzultzeko. Beste edozein pantailatik luze sakatu dezakezu menu nagusira zuzenean joateko.';

  @override
  String get deviceScreenMenuTutorialText =>
      'Hau da pantaila pantaila. Ukipen-pantaila eta Split Screen Modua lehenespenez gaituta daude eta ezarpenetan konfigura daitezke.';

  @override
  String get deviceControlNowPlayingTutorialText =>
      'Eraman zure behatza klik gurpilaren inguruan bolumena doitzeko';

  @override
  String get centerButtonNowPlayingTutorialText =>
      'Sakatu erdiko botoia bilatzeko barra, saski barra eta nahastu graduatzailea. Luze sakatu erdiko botoia aukera gehigarrietara sartzeko.';

  @override
  String get nextButtonNowPlayingTutorialText =>
      'Luze sakatu botoi hau abestia aurrera ateratzeko';

  @override
  String get previousButtonNowPlayingTutorialText =>
      'Luze sakatu botoi hau abestia itzultzeko';

  @override
  String get editSongOption => 'Editatu abestia';

  @override
  String get editSongScreenTitle => 'Editatu abestia';

  @override
  String get editSongNameLabel => 'Abestiaren izena';

  @override
  String get editSongArtistLabel => 'Artisten Izenak';

  @override
  String get editSongAlbumLabel => 'Albumaren izena';

  @override
  String get editSongGenreLabel => 'Generoa';

  @override
  String get editSongLyricsLabel => 'Letra';

  @override
  String get saveChangesButton => 'Gorde aldaketak';

  @override
  String get clickWheelInputTextBarTutorialText =>
      'Eraman zure hatza arinki gurpilaren inguruan alfabeto bat nabarmentzeko';

  @override
  String get centerButtonInputTextBarScreenTutorialText =>
      'Sakatu erdiko botoia nabarmendutako alfabetoa hautatzeko';

  @override
  String get nextButtonInputTextBarTutorialText =>
      'Sakatu botoi hau espazio bat gehitzeko';

  @override
  String get previousButtonInputTextBarTutorialText =>
      'Sakatu botoi hau azken karakterea ezabatzeko';

  @override
  String get menuButtonInputTextBarTutorialText =>
      'Sakatu botoi hau teklatua ixteko eta bilaketaren emaitzekin elkarreragiteko';

  @override
  String get allSongs => 'Abesti guztiak';

  @override
  String get clickWheelSizeSettingTitle => 'Egin klik Gurpilaren tamaina';

  @override
  String get clickWheelSensitivitySettingTitle =>
      'Egin klik Gurpilaren sentsibilitatea';

  @override
  String get small => 'Txiki';

  @override
  String get medium => 'Bitarte';

  @override
  String get large => 'Handi';

  @override
  String get veryLow => 'Oso baxua';

  @override
  String get low => 'Baxu';

  @override
  String get high => 'Garai';

  @override
  String get volumeModeSettingTitle => 'Bolumen modua';

  @override
  String get appVolumeMode => 'Martxa';

  @override
  String get systemVolumeMode => 'Sistema';

  @override
  String get renamePlaylist => 'Berrezarri erreprodukzio zerrenda';

  @override
  String get excludeDirectoriesScreenTitle => 'Baztertu Direktorioak';
}
