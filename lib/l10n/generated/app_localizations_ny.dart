// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Nyanja Chewa Chichewa (`ny`).
class AppLocalizationsNy extends AppLocalizations {
  AppLocalizationsNy([String locale = 'ny']) : super(locale);

  @override
  String get appTitle => 'Mkatopodi';

  @override
  String get menuButtonText => 'Chakudya';

  @override
  String get audioAccessPermissionTitle => 'Chilolezo chofikira';

  @override
  String get audioAccessPermissionContent =>
      'Chonde perekani mafayilo omvera kuti atithandizire kusewera mafayilo anu.';

  @override
  String get audioAccessPermissionPermanentlyDeniedTitle =>
      'Chilolezo chofikira chovomerezeka chimakanidwa';

  @override
  String get audioAccessPermissionPermanentlyDeniedContent =>
      'Chonde perekani mafayilo omvera a pulogalamuyi muzosintha zida kuti tichite masewera anu.';

  @override
  String get menuScreenTitle => 'Chakudya';

  @override
  String get musicMenuScreenTitle => 'Nyimbo';

  @override
  String get nowPlayingScreenTitle => 'Tsopano kusewera';

  @override
  String get shuffleSongsMenuTitle => 'Nyimbo za Shuffle';

  @override
  String get shuffleSettingTitle => 'Masekeli';

  @override
  String get settingsScreenTitle => 'Makonzedwe';

  @override
  String get aboutScreenTitle => 'Za';

  @override
  String get coverFlowScreenTitle => 'Chivundikiro';

  @override
  String get artistsScreenTitle => 'Opikisana nawo';

  @override
  String get albumsScreenTitle => 'Malbumu';

  @override
  String get songsScreenTitle => 'Nyimbo';

  @override
  String nSongs(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countString Nyimbo',
      one: '1 Nyimbo',
      zero: 'Palibe Nyimbo',
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
      other: '$countString Zimbale',
      one: '1 Album',
      zero: 'Palibe Zimbale',
    );
    return '$_temp0';
  }

  @override
  String get genresScreenTitle => 'Minyo';

  @override
  String get genreSongsScreenTitle => 'Nyimbo Zamtundu';

  @override
  String get deviceColorSettingTitle => 'Mtundu wa Chipangizo';

  @override
  String get touchScreenSettingTitle => 'Kukhudza Screen';

  @override
  String get repeatModeSettingTitle => 'Bwereza';

  @override
  String get repeatModeOne => 'Chimodzi';

  @override
  String get repeatModeAll => 'Onse';

  @override
  String get vibrateSettingTitle => 'Njenjemera';

  @override
  String get clickWheelSettingTitle => 'Dinani mawilo ziphuphu';

  @override
  String get splitScreenSettingTitle => 'Screet chenera';

  @override
  String get touchSoundsDialogTitle => 'Kukhudza mawu';

  @override
  String get touchSoundsDialogContent =>
      'Chonde thandizirani kumveka kuchokera ku makonda kuti amve kudina kaliketi';

  @override
  String get immersiveModeSettingTitle => 'Machitidwe';

  @override
  String get showAppTutorialSettingTitle => 'Onetsani maphunziro';

  @override
  String get changeDirectorySettingTitle => 'Sinthani Directory';

  @override
  String get donateSettingTitle => 'Peleka';

  @override
  String get donateSettingDescription =>
      'Ngati mukufuna pulogalamuyi, chonde onani zopereka.';

  @override
  String get versionAboutScreenTitle => 'Maganizo ena';

  @override
  String get madeWithLoveTitle => 'Zopangidwa ndi ❤️ ndi';

  @override
  String get noMusicFilesFound => 'Palibe Nyimbo';

  @override
  String get noArtistsFound => 'Palibe ojambula';

  @override
  String get noAlbumsFound => 'Palibe Albums';

  @override
  String get unknownSong => 'Nyimbo yosadziwika';

  @override
  String get unknownArtist => 'Wojambula wosadziwika';

  @override
  String get unknownAlbum => 'Album yosadziwika';

  @override
  String get unknownGenre => 'Mtundu Wosadziwika';

  @override
  String get buttonConfirmText => 'Chabwino';

  @override
  String get tileValueOn => 'Pa';

  @override
  String get tileValueOff => 'Pa';

  @override
  String get commonOfText => 'wa';

  @override
  String get pageNotFoundText => 'Tsamba lopatsidwa silinapezeke';

  @override
  String get commonErrorText => 'Kulakwa';

  @override
  String get retryButtonText => 'Yelekeza';

  @override
  String get filePickerDialogTitle =>
      'Sankhani chikwatu kuti muchepetse nyimbo';

  @override
  String get searchScreenTitle => 'Kufunafuna';

  @override
  String get searchEmptyText => 'Palibe Zotsatira Zosaka';

  @override
  String get searchResultsText => 'Zotsatira:';

  @override
  String get resultsForText => 'Zotsatira za:';

  @override
  String get disableBatteryOptimizationTitle => 'Lemekezani ma batri';

  @override
  String get disableBatteryOptimizationContent =>
      'Chonde lemekezani ma batiration a batire pa pulogalamuyi mu zosintha za chipangizocho kuti mulole nyimbo zosangalatsa.';

  @override
  String get languageScreenTitle => 'Chinenero';

  @override
  String get themeSettingTitle => 'Maganizo';

  @override
  String get silverDeviceColor => 'Siliva';

  @override
  String get blackDeviceColor => 'Wakuda';

  @override
  String get lightThemeTitle => 'Chosalemera';

  @override
  String get darkThemeTitle => 'Wakuda';

  @override
  String get orangeDeviceColor => 'lalanje';

  @override
  String get yellowDeviceColor => 'Chikasu';

  @override
  String get goldDeviceColor => 'Golidi';

  @override
  String get purpleDeviceColor => 'Chofiilira';

  @override
  String get pinkDeviceColor => 'Wofiyiliira';

  @override
  String get brownDeviceColor => 'Cha bulawundi';

  @override
  String get redDeviceColor => 'Chofiira';

  @override
  String get blueDeviceColor => 'Buluwu';

  @override
  String get limeDeviceColor => 'Layimu';

  @override
  String get greenDeviceColor => 'Wobiliwira';

  @override
  String get resetSettingsTitle => 'Kukonzanso makonda';

  @override
  String get browseArtist => 'Wojambula wa Sakatulani';

  @override
  String get browseAlbum => 'Sakatulani Album';

  @override
  String get cancelText => 'Siya';

  @override
  String get playlistsScreenTitle => 'Osewera';

  @override
  String get addToOnTheGoPlaylist => 'Onjezerani pa-pita';

  @override
  String get addAlbumToOnTheGoPlaylist => 'Onjezani album kupita ku-kupita';

  @override
  String get removeSongFromThePlaylist => 'Chotsani pa playlist';

  @override
  String get allAlbums => 'Albumle onse';

  @override
  String get scanningMusicFiles => 'Kusanthula mafayilo a nyimbo';

  @override
  String get newPlaylist => 'Sedlist Watsopano';

  @override
  String get savePlaylist => 'Sungani Playlist';

  @override
  String get clearPlaylist => 'Pholalist wowonekera';

  @override
  String get rescanMusicFilesSettingTitle => 'Mafayilo a nyimbo';

  @override
  String get deviceControlMenuTutorialText =>
      'Sunthani chala chanu mopepuka mozungulira';

  @override
  String get centerButtonMenuTutorialText =>
      'Kanikizani batani la Center kuti musankhe chinthu chojambulidwa';

  @override
  String get playPauseMenuTutorialText =>
      'Dinani batani ili kuti musewere kapena yikani nyimbo';

  @override
  String get nextButtonMenuTutorialText =>
      'Dinani batani ili kuti mulumphe ku nyimbo yotsatira';

  @override
  String get previousButtonMenuTutorialText =>
      'Dinani batani ili kuti mubwezeretse kapena kubwerera ku nyimbo yapitayo';

  @override
  String get menuButtonTutorialText =>
      'Dinani batani ili kuti mubwerere ku menyu yapitayo. Mutha kukanikiza ndikuyisunga kuchokera pa chophimba china chilichonse kuti mupite mwachindunji ku menyu yayikulu.';

  @override
  String get deviceScreenMenuTutorialText =>
      'Ili ndiye chiwonetsero chowonetsera. Kukhudza Screen ndi Screet Screen Mode amathandizidwa ndi kusakhazikika ndipo imatha kukhazikitsidwa mopitilira makonda.';

  @override
  String get deviceControlNowPlayingTutorialText =>
      'Sunthani chala chanu kuzungulira disidi kuti musinthe voliyumu';

  @override
  String get centerButtonNowPlayingTutorialText =>
      'Kanikizani batani la Center kuti muchepetse ndalama, scrubber bar ndi shuffle slider. Kanikizani ndikugwira batani la pakati kuti mupeze zosankha zowonjezera.';

  @override
  String get nextButtonNowPlayingTutorialText =>
      'Kanikizani ndikusunga batani ili kuti mupitilize';

  @override
  String get previousButtonNowPlayingTutorialText =>
      'Kanikizani ndikusunga batani ili kuti mubwezereni nyimbo';

  @override
  String get editSongOption => 'Sinthani Nyimbo';

  @override
  String get editSongScreenTitle => 'Sinthani Nyimbo';

  @override
  String get editSongNameLabel => 'Dzina la nyimbo';

  @override
  String get editSongArtistLabel => 'Mayina Ojambula';

  @override
  String get editSongAlbumLabel => 'Dzina la Album';

  @override
  String get editSongGenreLabel => 'Mtundu';

  @override
  String get editSongLyricsLabel => 'Ndi mawu';

  @override
  String get saveChangesButton => 'Sungani Kusintha';

  @override
  String get clickWheelInputTextBarTutorialText =>
      'Sunthani chala chanu mopepuka mozungulira';

  @override
  String get centerButtonInputTextBarScreenTutorialText =>
      'Kanikizani batani la Center kuti musankhe zilembo zapamwamba';

  @override
  String get nextButtonInputTextBarTutorialText =>
      'Dinani batani ili kuti muwonjezere danga';

  @override
  String get previousButtonInputTextBarTutorialText =>
      'Dinani batani ili kuti muchotse mawonekedwe omaliza';

  @override
  String get menuButtonInputTextBarTutorialText =>
      'Dinani batani ili kuti mutseke kiyibodi ndikuyanjana ndi zotsatira zakusaka';

  @override
  String get allSongs => 'Nyimbo zonse';

  @override
  String get clickWheelSizeSettingTitle => 'Dinani kukula kwa gudumu';

  @override
  String get clickWheelSensitivitySettingTitle => 'Dinani gudumu';

  @override
  String get small => 'Ochepa';

  @override
  String get medium => 'Wapakati';

  @override
  String get large => 'Chachikulu';

  @override
  String get veryLow => 'Otsika kwambiri';

  @override
  String get low => 'Pansi';

  @override
  String get high => 'M\'mwamba';

  @override
  String get volumeModeSettingTitle => 'Mtundu wa voliyumu';

  @override
  String get appVolumeMode => 'Wothandizira';

  @override
  String get systemVolumeMode => 'Makhalidwe';

  @override
  String get renamePlaylist => 'Sinthani playlist';

  @override
  String get excludeDirectoriesScreenTitle => 'Osapatula makonda';
}
