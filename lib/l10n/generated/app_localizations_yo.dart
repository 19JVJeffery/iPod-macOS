// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Yoruba (`yo`).
class AppLocalizationsYo extends AppLocalizations {
  AppLocalizationsYo([String locale = 'yo']) : super(locale);

  @override
  String get appTitle => 'Iwe-ikawe';

  @override
  String get menuButtonText => 'Mẹnu';

  @override
  String get audioAccessPermissionTitle => 'Igbanilaaye wiwọle Audio nilo';

  @override
  String get audioAccessPermissionContent =>
      'Jọwọ fun awọn faili ohun wọle wọle lati gba wa laaye lati mu awọn faili orin rẹ dun.';

  @override
  String get audioAccessPermissionPermanentlyDeniedTitle =>
      'Iwe igbanilaaye Audio Audio kọ';

  @override
  String get audioAccessPermissionPermanentlyDeniedContent =>
      'Jọwọ fun awọn faili ohun Wiwọle iraye fun app yii ninu awọn eto eto lati gba wa laaye lati mu awọn faili orin rẹ ṣiṣẹ.';

  @override
  String get menuScreenTitle => 'Mẹnu';

  @override
  String get musicMenuScreenTitle => 'Orin';

  @override
  String get nowPlayingScreenTitle => 'Bayi ndun';

  @override
  String get shuffleSongsMenuTitle => 'Awọn orin Shuffle';

  @override
  String get shuffleSettingTitle => 'Dapọ';

  @override
  String get settingsScreenTitle => 'Eto';

  @override
  String get aboutScreenTitle => 'Nipa';

  @override
  String get coverFlowScreenTitle => 'Ideri ideri';

  @override
  String get artistsScreenTitle => 'Awọn oṣere';

  @override
  String get albumsScreenTitle => 'Awo-orin';

  @override
  String get songsScreenTitle => 'Awọn orin';

  @override
  String nSongs(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countString Awọn orin',
      one: '1 Orin',
      zero: 'Ko si Awọn orin',
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
      other: '$countString Awọn awo-orin',
      one: '1 Album',
      zero: 'Ko si Awo-orin',
    );
    return '$_temp0';
  }

  @override
  String get genresScreenTitle => 'Awọn akọ';

  @override
  String get genreSongsScreenTitle => 'Awọn orin Menre';

  @override
  String get deviceColorSettingTitle => 'Awọ Ẹrọ';

  @override
  String get touchScreenSettingTitle => 'Iboju ifọwọkan';

  @override
  String get repeatModeSettingTitle => 'Tun';

  @override
  String get repeatModeOne => 'Ẹyọkan';

  @override
  String get repeatModeAll => 'Gbogbo';

  @override
  String get vibrateSettingTitle => 'Gbọn';

  @override
  String get clickWheelSettingTitle => 'Tẹ awọn ohun kẹkẹ';

  @override
  String get splitScreenSettingTitle => 'Ipo iboju Pin';

  @override
  String get touchSoundsDialogTitle => 'Ifọwọkan awọn ohun';

  @override
  String get touchSoundsDialogContent =>
      'Jọwọ ṣiṣẹ mọ awọn ohun ifọwọkan lati awọn eto eto lati gbọ awọn ariwo kẹkẹ';

  @override
  String get immersiveModeSettingTitle => 'Ipo Immersive';

  @override
  String get showAppTutorialSettingTitle => 'Ṣe adehun Tutorial';

  @override
  String get changeDirectorySettingTitle => 'Yi itọsọna';

  @override
  String get donateSettingTitle => 'Ṣetọrẹ';

  @override
  String get donateSettingDescription =>
      'Ti o ba fẹran app yii, jọwọ ronu lilo.';

  @override
  String get versionAboutScreenTitle => 'Ẹya';

  @override
  String get madeWithLoveTitle => 'Ṣe pẹlu ❤️ nipasẹ';

  @override
  String get noMusicFilesFound => 'Ko si orin';

  @override
  String get noArtistsFound => 'Ko si awọn oṣere';

  @override
  String get noAlbumsFound => 'Ko si awọn awo-orin';

  @override
  String get unknownSong => 'Orin aimọ';

  @override
  String get unknownArtist => 'Oṣere aimọ';

  @override
  String get unknownAlbum => 'AKIYESI AKIYESI';

  @override
  String get unknownGenre => 'Digre aimọ';

  @override
  String get buttonConfirmText => 'Dara';

  @override
  String get tileValueOn => 'Lori';

  @override
  String get tileValueOff => 'Kuro';

  @override
  String get commonOfText => 'ti';

  @override
  String get pageNotFoundText => 'Oju-iwe ti a fun ko ri';

  @override
  String get commonErrorText => 'Aṣiṣe';

  @override
  String get retryButtonText => 'Reti';

  @override
  String get filePickerDialogTitle => 'Yan itọsọna kan lati ọlọjẹ fun orin';

  @override
  String get searchScreenTitle => 'Ṣewadii';

  @override
  String get searchEmptyText => 'Ko si awọn abajade wiwa';

  @override
  String get searchResultsText => 'Awọn abajade wiwa:';

  @override
  String get resultsForText => 'Awọn abajade fun:';

  @override
  String get disableBatteryOptimizationTitle => 'Mu Ifasi batiri';

  @override
  String get disableBatteryOptimizationContent =>
      'Jọwọ mu imudara batiri fun app yii ninu awọn eto ẹrọ lati jẹ ki ere atilẹba ti orin.';

  @override
  String get languageScreenTitle => 'Ede';

  @override
  String get themeSettingTitle => 'Akọle';

  @override
  String get silverDeviceColor => 'Fadaka';

  @override
  String get blackDeviceColor => 'Dudu';

  @override
  String get lightThemeTitle => 'Imọlẹ';

  @override
  String get darkThemeTitle => 'Dudu';

  @override
  String get orangeDeviceColor => 'ọsan';

  @override
  String get yellowDeviceColor => 'Yẹlo';

  @override
  String get goldDeviceColor => 'Goolu';

  @override
  String get purpleDeviceColor => 'Pọpu';

  @override
  String get pinkDeviceColor => 'Awọ pupa';

  @override
  String get brownDeviceColor => 'Bura';

  @override
  String get redDeviceColor => 'Pupa';

  @override
  String get blueDeviceColor => 'Bulu';

  @override
  String get limeDeviceColor => 'Orombo wewe';

  @override
  String get greenDeviceColor => 'Awọ ewe';

  @override
  String get resetSettingsTitle => 'Eto atunto';

  @override
  String get browseArtist => 'Ṣawakiri olorin';

  @override
  String get browseAlbum => 'WLOWNA awo';

  @override
  String get cancelText => 'Fagilee';

  @override
  String get playlistsScreenTitle => 'Orin';

  @override
  String get addToOnTheGoPlaylist => 'Ṣafikun si-lọ';

  @override
  String get addAlbumToOnTheGoPlaylist => 'Fi awo-orin kun si-lọ';

  @override
  String get removeSongFromThePlaylist => 'Yọ kuro lati akojọ orin';

  @override
  String get allAlbums => 'Gbogbo awọn awo-orin';

  @override
  String get scanningMusicFiles => 'Awọn faili Orin Scring';

  @override
  String get newPlaylist => 'Orin titun';

  @override
  String get savePlaylist => 'Fipamọ akojọ orin';

  @override
  String get clearPlaylist => 'Kọṣe akojọ orin';

  @override
  String get rescanMusicFilesSettingTitle => 'Awọn faili Orin Igbala';

  @override
  String get deviceControlMenuTutorialText =>
      'Gbe atanpako rẹ ni ayika kẹkẹ ti o tẹ bọtini lati lilö kiri';

  @override
  String get centerButtonMenuTutorialText =>
      'Tẹ bọtini aarin lati yan nkan akojọ aṣayan ti o tẹnumọ';

  @override
  String get playPauseMenuTutorialText =>
      'Tẹ bọtini yii lati mu ṣiṣẹ tabi da duro orin kan';

  @override
  String get nextButtonMenuTutorialText =>
      'Tẹ bọtini yii lati fo si orin atẹle';

  @override
  String get previousButtonMenuTutorialText =>
      'Tẹ bọtini yii lati sẹhin tabi pada sẹhin si orin iṣaaju';

  @override
  String get menuButtonTutorialText =>
      'Tẹ bọtini yii lati pada si mẹnu ti tẹlẹ. O le tẹ ati mu ki o di ohun iboju eyikeyi miiran lati lọ si akojọ aṣayan akọkọ.';

  @override
  String get deviceScreenMenuTutorialText =>
      'Eyi ni iboju Ifihan. Iboju ifọwọkan ati Ipo iboju pipin ti ṣiṣẹ nipasẹ aiyipada ati pe o le wa ni tunto siwaju ninu awọn eto.';

  @override
  String get deviceControlNowPlayingTutorialText =>
      'Gbe atanpako rẹ ni ayika kẹkẹ ti o tẹ lati ṣatunṣe iwọn didun';

  @override
  String get centerButtonNowPlayingTutorialText =>
      'Tẹ bọtini oju-ajo si ọmọ nipasẹ awọn abe, igi idẹjẹ ati didaworan sloffle. Tẹ mọlẹ bọtini ile-iṣẹ lati wọle si awọn aṣayan afikun.';

  @override
  String get nextButtonNowPlayingTutorialText =>
      'Tẹ mọlẹ bọtini yii lati yara mu orin siwaju';

  @override
  String get previousButtonNowPlayingTutorialText =>
      'Tẹ ki o mu bọtini yi lati tun orin naa';

  @override
  String get editSongOption => 'Satunkọ orin';

  @override
  String get editSongScreenTitle => 'Satunkọ orin';

  @override
  String get editSongNameLabel => 'Orukọ orin';

  @override
  String get editSongArtistLabel => 'Olorin olorin';

  @override
  String get editSongAlbumLabel => 'Orukọ awo';

  @override
  String get editSongGenreLabel => 'Oriṣi';

  @override
  String get editSongLyricsLabel => 'Lyrics';

  @override
  String get saveChangesButton => 'Fi awọn ayipada pamọ';

  @override
  String get clickWheelInputTextBarTutorialText =>
      'Gbe atanpako rẹ ni irọrun yika kẹkẹ tẹ lati ṣe afihan abidi kan';

  @override
  String get centerButtonInputTextBarScreenTutorialText =>
      'Tẹ bọtini aarin lati yan abidi ti a ṣe afihan';

  @override
  String get nextButtonInputTextBarTutorialText =>
      'Tẹ bọtini yii lati ṣafikun aaye kan';

  @override
  String get previousButtonInputTextBarTutorialText =>
      'Tẹ bọtini yii lati pa ohun kikọ ikẹhin';

  @override
  String get menuButtonInputTextBarTutorialText =>
      'Tẹ bọtini yii lati pa bọtini itẹwe ati ibaraenisọrọ pẹlu awọn abajade wiwa';

  @override
  String get allSongs => 'Gbogbo awọn orin';

  @override
  String get clickWheelSizeSettingTitle => 'Tẹ Iwọn kẹkẹ';

  @override
  String get clickWheelSensitivitySettingTitle => 'Tẹ ifamọ kẹkẹ';

  @override
  String get small => 'Kekere';

  @override
  String get medium => 'Laarin';

  @override
  String get large => 'Nla';

  @override
  String get veryLow => 'Pupo kekere';

  @override
  String get low => 'Lọ silẹ';

  @override
  String get high => 'Giga';

  @override
  String get volumeModeSettingTitle => 'Ipo iwọn didun';

  @override
  String get appVolumeMode => 'Ohun elo';

  @override
  String get systemVolumeMode => 'Eto';

  @override
  String get renamePlaylist => 'Lorukọ akojọ orin';

  @override
  String get excludeDirectoriesScreenTitle => 'Ṣe iyasọtọ awọn ilana';
}
