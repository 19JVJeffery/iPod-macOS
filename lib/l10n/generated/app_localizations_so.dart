// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Somali (`so`).
class AppLocalizationsSo extends AppLocalizations {
  AppLocalizationsSo([String locale = 'so']) : super(locale);

  @override
  String get appTitle => 'Heersilo';

  @override
  String get menuButtonText => 'Warqad qiimo';

  @override
  String get audioAccessPermissionTitle =>
      'Ogolaanshaha Helitaanka Audio ayaa loo baahan yahay';

  @override
  String get audioAccessPermissionContent =>
      'Fadlan sii ogolow Audio feylasha si ay u oggolaadaan inay noo oggolaadaan inaan ciyaarno faylashaada muusikada.';

  @override
  String get audioAccessPermissionPermanentlyDeniedTitle =>
      'Ogolaanshaha Helitaanka Audio ayaa la diiday';

  @override
  String get audioAccessPermissionPermanentlyDeniedContent =>
      'Fadlan sii ogolow Audio faylasha gelitaanka barnaamijkan ku jira goobaha aaladda si loogu oggolaado inaan ciyaarno faylasha muusikadaada.';

  @override
  String get menuScreenTitle => 'Warqad qiimo';

  @override
  String get musicMenuScreenTitle => 'Muusik';

  @override
  String get nowPlayingScreenTitle => 'Hadda ciyaarta';

  @override
  String get shuffleSongsMenuTitle => 'Shuffle heeso';

  @override
  String get shuffleSettingTitle => 'Isku shuuu';

  @override
  String get settingsScreenTitle => 'Dejinta';

  @override
  String get aboutScreenTitle => 'Ku saabsan';

  @override
  String get coverFlowScreenTitle => 'Daboolka qulqulka';

  @override
  String get artistsScreenTitle => 'Farshaxan';

  @override
  String get albumsScreenTitle => 'Albums';

  @override
  String get songsScreenTitle => 'Gabyaa';

  @override
  String nSongs(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countString Heesaha',
      one: '1 Heesta',
      zero: 'Maya Heeso',
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
      one: '1 Albumka',
      zero: 'Ma jiro Albums',
    );
    return '$_temp0';
  }

  @override
  String get genresScreenTitle => 'Nooc beer';

  @override
  String get genreSongsScreenTitle => 'Heesaha Genre';

  @override
  String get deviceColorSettingTitle => 'Midabka aaladda';

  @override
  String get touchScreenSettingTitle => 'Shaashadda taabashada kartida';

  @override
  String get repeatModeSettingTitle => 'Ku celin';

  @override
  String get repeatModeOne => 'Hal / kow';

  @override
  String get repeatModeAll => 'Kulli';

  @override
  String get vibrateSettingTitle => 'Gariirin';

  @override
  String get clickWheelSettingTitle => 'Dhagsii dhawaaqa giraangiraha';

  @override
  String get splitScreenSettingTitle => 'Qaabka shaashadda ee kala goynta';

  @override
  String get touchSoundsDialogTitle => 'Taabashada codka';

  @override
  String get touchSoundsDialogContent =>
      'Fadlan u oggolow codadka taabashada ee nidaamka nidaamka si aad u maqashid dhawaqa dhagta';

  @override
  String get immersiveModeSettingTitle => 'Habka is-dhexgalka';

  @override
  String get showAppTutorialSettingTitle => 'Muuji cashar ahaan';

  @override
  String get changeDirectorySettingTitle => 'Beddel tusaha';

  @override
  String get donateSettingTitle => 'Ku tabarrucid';

  @override
  String get donateSettingDescription =>
      'Haddii aad jeceshahay barnaamijkan, fadlan ka fiirso tabaruca.';

  @override
  String get versionAboutScreenTitle => 'Werin';

  @override
  String get madeWithLoveTitle => 'Laga sameeyay ❤️ by';

  @override
  String get noMusicFilesFound => 'Muusig la\'aan';

  @override
  String get noArtistsFound => 'Ma jiraan wax faneed';

  @override
  String get noAlbumsFound => 'Ma jiraan albums';

  @override
  String get unknownSong => 'Heesta aan la aqoon';

  @override
  String get unknownArtist => 'Farshaxan aan la garaneyn';

  @override
  String get unknownAlbum => 'Album aan la aqoon';

  @override
  String get unknownGenre => 'Hanti aan la aqoon';

  @override
  String get buttonConfirmText => 'Hagaag';

  @override
  String get tileValueOn => 'Dul saaran';

  @override
  String get tileValueOff => 'Damin';

  @override
  String get commonOfText => 'ee';

  @override
  String get pageNotFoundText => 'Bogga la siiyay lama helin';

  @override
  String get commonErrorText => 'Khalad';

  @override
  String get retryButtonText => 'Isku tiir';

  @override
  String get filePickerDialogTitle => 'Xulo tusaha si aad u baarto muusikada';

  @override
  String get searchScreenTitle => 'Raadin';

  @override
  String get searchEmptyText => 'Natiijooyin raadinta majiraan';

  @override
  String get searchResultsText => 'Natiijooyinka raadinta:';

  @override
  String get resultsForText => 'Natiijooyinka:';

  @override
  String get disableBatteryOptimizationTitle =>
      'Disable Kor-u-qaadidda batteriga';

  @override
  String get disableBatteryOptimizationContent =>
      'Fadlan ka dhig kor u qaadista batteriga loogu talagalay barnaamijkan aaladda si aad u oggolaato dib-u-dhaca asalka ee muusikada.';

  @override
  String get languageScreenTitle => 'Af';

  @override
  String get themeSettingTitle => 'Mawduuca hadal';

  @override
  String get silverDeviceColor => 'Qalin';

  @override
  String get blackDeviceColor => 'Madoow';

  @override
  String get lightThemeTitle => 'Iftiin';

  @override
  String get darkThemeTitle => 'Mugdi ah';

  @override
  String get orangeDeviceColor => 'Oranji';

  @override
  String get yellowDeviceColor => 'Jaalle';

  @override
  String get goldDeviceColor => 'Dehab';

  @override
  String get purpleDeviceColor => 'Midab buluug-guduud';

  @override
  String get pinkDeviceColor => 'Guduudan khafiif';

  @override
  String get brownDeviceColor => 'Midab kafe leh';

  @override
  String get redDeviceColor => 'Guduudan';

  @override
  String get blueDeviceColor => 'Bulug';

  @override
  String get limeDeviceColor => 'Lito';

  @override
  String get greenDeviceColor => 'Cagaar';

  @override
  String get resetSettingsTitle => 'Dib-u-dejin dejinta';

  @override
  String get browseArtist => 'Farshaxanka Baalamka';

  @override
  String get browseAlbum => 'Baadh album';

  @override
  String get cancelText => 'Burin';

  @override
  String get playlistsScreenTitle => 'Tweeles-ka';

  @override
  String get addToOnTheGoPlaylist => 'Kudar on-the-go';

  @override
  String get addAlbumToOnTheGoPlaylist => 'Ku dar album to-the-go';

  @override
  String get removeSongFromThePlaylist => 'Ka saar liiska ciyaarta';

  @override
  String get allAlbums => 'Dhamaan albums';

  @override
  String get scanningMusicFiles => 'Iska miirista faylasha muusikada';

  @override
  String get newPlaylist => 'Liiska cusub ee ciyaarta';

  @override
  String get savePlaylist => 'Badbaadi liistada Ciyaaraha';

  @override
  String get clearPlaylist => 'Liiska Ciyaarta Cad';

  @override
  String get rescanMusicFilesSettingTitle =>
      'Faylasha muusikada ee samatabbixinta';

  @override
  String get deviceControlMenuTutorialText =>
      'U dhaqaaq suulkaaga si khafiif ah hareeraha dhagsii dhagsiga si aad ugu socoto menu';

  @override
  String get centerButtonMenuTutorialText =>
      'Riix badhanka xarunta si aad u doorato shayga liiska iftiimiyey';

  @override
  String get playPauseMenuTutorialText =>
      'Taabo batoonkan si aad u ciyaarto ama ha joojiso hees';

  @override
  String get nextButtonMenuTutorialText =>
      'Taabo batoonkan si aad ugu booddo heesta soo socota';

  @override
  String get previousButtonMenuTutorialText =>
      'Riix batoonkan si aad dib ugu noqoto ama dib ugu noqo heesta hore';

  @override
  String get menuButtonTutorialText =>
      'Riix badhankan si aad ugu laabato menu hore. Waad riixi kartaa oo waxaad kaheli kartaa shaashad kasta oo kale si aad si toos ah u tagto menu-ka ugu weyn.';

  @override
  String get deviceScreenMenuTutorialText =>
      'Kani waa shaashadda shaashadda. Xaaladda shaashadda taabashada iyo nooca shaashadda ee loo kala qaybiyey ayaa si caadi ah loo kartiyeeyaa waxaana lagu dejin karaa meelaynta.';

  @override
  String get deviceControlNowPlayingTutorialText =>
      'Ku wareeji suulkaaga guji riix riix si aad u hagaajiso mugga';

  @override
  String get centerButtonNowPlayingTutorialText =>
      'Riix batoonka bartamaha si aad ugu wareejiso raadinta bar, xargaha xoqidda iyo scider ssubel. Riix oo hay badhanka xarunta si aad u hesho xulasho dheeraad ah.';

  @override
  String get nextButtonNowPlayingTutorialText =>
      'Riix oo ku hay badhankan si aad ugu soo xidho heesta';

  @override
  String get previousButtonNowPlayingTutorialText =>
      'Riix oo hay badhankan si aad dib ugu celiso heesta';

  @override
  String get editSongOption => 'Edit song';

  @override
  String get editSongScreenTitle => 'Edit song';

  @override
  String get editSongNameLabel => 'Magaca heesta';

  @override
  String get editSongArtistLabel => 'Magacyada farshaxanka';

  @override
  String get editSongAlbumLabel => 'Magaca albumka';

  @override
  String get editSongGenreLabel => 'Dalool';

  @override
  String get editSongLyricsLabel => 'Heesaha';

  @override
  String get saveChangesButton => 'Badbaadiya isbedelada';

  @override
  String get clickWheelInputTextBarTutorialText =>
      'U dhaqaaq suulkaaga si fudud hareeraha dhagsii dhagsii si aad u muujiso alifbeetada';

  @override
  String get centerButtonInputTextBarScreenTutorialText =>
      'Riix badhanka xarunta si aad u doorato xarfaha iftiimiya';

  @override
  String get nextButtonInputTextBarTutorialText =>
      'Riix badhankan si aad ugu darto meel bannaan';

  @override
  String get previousButtonInputTextBarTutorialText =>
      'Riix badhankan si aad u tirtirto dabeecada ugu dambeysay';

  @override
  String get menuButtonInputTextBarTutorialText =>
      'Riix badhankan si aad u xidho furaha oo aad la macaamilayso natiijooyinka raadinta';

  @override
  String get allSongs => 'Dhammaan heesaha';

  @override
  String get clickWheelSizeSettingTitle => 'Dhagsii cabirka giraangiraha';

  @override
  String get clickWheelSensitivitySettingTitle =>
      'Dhagsii dareenka giraangiraha';

  @override
  String get small => 'Yar';

  @override
  String get medium => 'Heer dhexe ah';

  @override
  String get large => 'Weyn';

  @override
  String get veryLow => 'Aad u hooseeya';

  @override
  String get low => 'Hooseeya';

  @override
  String get high => 'Sare ah';

  @override
  String get volumeModeSettingTitle => 'Qaabka mugga';

  @override
  String get appVolumeMode => 'App';

  @override
  String get systemVolumeMode => 'Nidaam';

  @override
  String get renamePlaylist => 'Liistada magacyada';

  @override
  String get excludeDirectoriesScreenTitle => 'Ka saar Tilmaamaha';
}
