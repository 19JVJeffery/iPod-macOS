// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Khasi (`kha`).
class AppLocalizationsKha extends AppLocalizations {
  AppLocalizationsKha([String locale = 'kha']) : super(locale);

  @override
  String get appTitle => 'klassPod';

  @override
  String get menuButtonText => 'MENU';

  @override
  String get audioAccessPermissionTitle => 'Ka Jing lah ban wan rung .';

  @override
  String get audioAccessPermissionContent =>
      'Sngewbha ai ia ki file audio ban ailad ia ngi ban tem ia ki file jingrwai jong phi.';

  @override
  String get audioAccessPermissionPermanentlyDeniedTitle =>
      'Ka Jing lah ban wan.';

  @override
  String get audioAccessPermissionPermanentlyDeniedContent =>
      'Sngewbha ai ia ki file audio ban ioh ia kane ka app ha ki jaka shna tiar ban ailad ia ngi ban tem ia ki file jingrwai jong phi.';

  @override
  String get menuScreenTitle => 'Meu';

  @override
  String get musicMenuScreenTitle => 'Ka put ka tem';

  @override
  String get nowPlayingScreenTitle => 'Mynta da put';

  @override
  String get shuffleSongsMenuTitle => 'Shiffle jingrwai';

  @override
  String get shuffleSettingTitle => 'Shffle';

  @override
  String get settingsScreenTitle => 'shong';

  @override
  String get aboutScreenTitle => 'Shaphang';

  @override
  String get coverFlowScreenTitle => 'Pyniap';

  @override
  String get artistsScreenTitle => 'Ki nongdro';

  @override
  String get albumsScreenTitle => 'Ka Albm';

  @override
  String get songsScreenTitle => 'jingrwai';

  @override
  String nSongs(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countString jingrwai',
      one: '1 Jingrwai',
      zero: 'Ki Jingrwai',
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
      other: '$countString Ka Albm',
      one: '1 Album',
      zero: 'Ym don album',
    );
    return '$_temp0';
  }

  @override
  String get genresScreenTitle => 'ki jait';

  @override
  String get genreSongsScreenTitle => 'Ki Jingrwai jingrwai';

  @override
  String get deviceColorSettingTitle => 'Ka rong';

  @override
  String get touchScreenSettingTitle => 'U To ktah ia ka Screen';

  @override
  String get repeatModeSettingTitle => 'Ong biang';

  @override
  String get repeatModeOne => 'Iwei';

  @override
  String get repeatModeAll => 'Baroh-ar';

  @override
  String get vibrateSettingTitle => 'ba iaid';

  @override
  String get clickWheelSettingTitle => 'Ki Khubor ba sniew';

  @override
  String get splitScreenSettingTitle => 'Jied ia ka Mode .';

  @override
  String get touchSoundsDialogTitle => 'Ka ktah ia ki sur';

  @override
  String get touchSoundsDialogContent =>
      'Sngewbha ban ktah ia ki sur ba sngewtynnad na System ban iohsngew ia ki sur ba jem .';

  @override
  String get immersiveModeSettingTitle => 'Ka Mode';

  @override
  String get showAppTutorialSettingTitle => 'Sow Tueral';

  @override
  String get changeDirectorySettingTitle => 'Pynkylla ia ka Directory';

  @override
  String get donateSettingTitle => 'Aisbun';

  @override
  String get donateSettingDescription =>
      'Lada phi sngewtynnad ia kane ka app, sngewbha pyrkhat ban ai sngewbha.';

  @override
  String get versionAboutScreenTitle => 'Jingiathuh';

  @override
  String get madeWithLoveTitle => 'La shna bad ❤️ da';

  @override
  String get noMusicFilesFound => 'Em';

  @override
  String get noArtistsFound => 'Ki Artist';

  @override
  String get noAlbumsFound => 'No Album';

  @override
  String get unknownSong => 'Ka Jingrwai ba khlem tip';

  @override
  String get unknownArtist => 'U Artist';

  @override
  String get unknownAlbum => 'bym tip';

  @override
  String get unknownGenre => 'Genre';

  @override
  String get buttonConfirmText => 'TO';

  @override
  String get tileValueOn => 'Halor';

  @override
  String get tileValueOff => 'Lip';

  @override
  String get commonOfText => 'jong';

  @override
  String get pageNotFoundText => 'Ia ka sla ba la ai';

  @override
  String get commonErrorText => 'Jingbakla';

  @override
  String get retryButtonText => 'Pynkylla';

  @override
  String get filePickerDialogTitle =>
      'Jied ia u Directory ban Scan na ka bynta ka Music .';

  @override
  String get searchScreenTitle => 'Wad';

  @override
  String get searchEmptyText => 'Ym don ki jingmih';

  @override
  String get searchResultsText => 'Ki jingmih na ka jingwad:';

  @override
  String get resultsForText => 'Ki jingmih na ka bynta:';

  @override
  String get disableBatteryOptimizationTitle => 'Ka jingpynkhlain ia ka met';

  @override
  String get disableBatteryOptimizationContent =>
      'Sngewbha pynbha ia ki battery kiba duna dkhot met na ka bynta kane ka app ha ki jaka shna tiar ban ailad ia ka jingkylla ha ka met.';

  @override
  String get languageScreenTitle => 'Jait ktien';

  @override
  String get themeSettingTitle => 'Phang pdeng';

  @override
  String get silverDeviceColor => 'Rupa';

  @override
  String get blackDeviceColor => 'Ba iong';

  @override
  String get lightThemeTitle => 'Jingshai';

  @override
  String get darkThemeTitle => 'Dum';

  @override
  String get orangeDeviceColor => 'Soh niamtra';

  @override
  String get yellowDeviceColor => 'Ba stem';

  @override
  String get goldDeviceColor => 'Ksiar';

  @override
  String get purpleDeviceColor => 'Saw bthuh';

  @override
  String get pinkDeviceColor => 'Babyrsaw';

  @override
  String get brownDeviceColor => 'Rong ktieh';

  @override
  String get redDeviceColor => 'Saw';

  @override
  String get blueDeviceColor => 'Rong suin bneng';

  @override
  String get limeDeviceColor => 'sah';

  @override
  String get greenDeviceColor => 'Jyrngam';

  @override
  String get resetSettingsTitle => 'Ki jingpynbeit thymmai';

  @override
  String get browseArtist => 'U Atists uba heh';

  @override
  String get browseAlbum => 'Brower Album';

  @override
  String get cancelText => 'Pyndam';

  @override
  String get playlistsScreenTitle => 'Ki nongialehkai';

  @override
  String get addToOnTheGoPlaylist =>
      'Pyndap ia ka ha ka jingmut jingpyrkhat jong u.';

  @override
  String get addAlbumToOnTheGoPlaylist =>
      'Pyndap ia ka Album sha ka Hang-U-Go .';

  @override
  String get removeSongFromThePlaylist => 'Pynduh noh na ka Playlist .';

  @override
  String get allAlbums => 'Baroh ki Album';

  @override
  String get scanningMusicFiles => 'Ka jaka ba lah ban bam';

  @override
  String get newPlaylist => 'New Playlist';

  @override
  String get savePlaylist => 'Pynduna ia ka Playlist';

  @override
  String get clearPlaylist => 'Ka jain siang rong';

  @override
  String get rescanMusicFilesSettingTitle => 'Pynduna ia ki Prime Files .';

  @override
  String get deviceControlMenuTutorialText =>
      'Pynkhih ia u thylliej jong phi da kaba jem bha sawdong u Ksiar Click ban iaid lyngba ia ka menu .';

  @override
  String get centerButtonMenuTutorialText =>
      'Pynkhih ia u button pdeng ban jied ia ka mar ba la pynpaw .';

  @override
  String get playPauseMenuTutorialText =>
      'Pynkhih ia une u button ban tem ne sangeh ia ka jingrwai .';

  @override
  String get nextButtonMenuTutorialText =>
      'Pynkhih ia kane ka button ban skip sha ka jingrwai kaba bud .';

  @override
  String get previousButtonMenuTutorialText =>
      'Pynkhih ia une u button ban pynliem biang ne leit phai biang sha ka jingrwai ba mynshuwa .';

  @override
  String get menuButtonTutorialText =>
      'Pynkhih ia une u button ban leit phai biang sha ka menu kaba mynshuwa. Phi lah ban pynkhih bad bat ia ka na kano kano kawei pat ka screen ban leit beit sha ka menu ba kongsan.';

  @override
  String get deviceScreenMenuTutorialText =>
      'Kane ka dei ka screen pyni. Ka jingktah jong ka Screen bad ka Mode Screen Mode la pynlah da kaba duna bad lah ban pynbeit kham bniah ha ki jaka.';

  @override
  String get deviceControlNowPlayingTutorialText =>
      'Pynkhih ia ka kti jong phi sawdong u Wheel jong u Click ban pynbeit ia ka volume .';

  @override
  String get centerButtonNowPlayingTutorialText =>
      'Pynkhih ia u button Centre lyngba wad ia u bar, u scrubber bar bad u slur. Press bad pynlong ia u button Centre ban ioh ia ki lad ki lynti kiba kham bun.';

  @override
  String get nextButtonNowPlayingTutorialText =>
      'Press bad pynlong ia une u button ban iaid stet sha khmat ia ka jingrwai .';

  @override
  String get previousButtonNowPlayingTutorialText =>
      'Press bad bat ia une u button ban pynliem biang ia ka jingrwai .';

  @override
  String get editSongOption => 'Edit Song';

  @override
  String get editSongScreenTitle => 'Edit Song';

  @override
  String get editSongNameLabel => 'jingrwai Kyrteng';

  @override
  String get editSongArtistLabel => 'Ki kyrteng';

  @override
  String get editSongAlbumLabel => 'Album Name';

  @override
  String get editSongGenreLabel => 'Ka bynta';

  @override
  String get editSongLyricsLabel => 'ki Lynric';

  @override
  String get saveChangesButton => 'Ki jingkylla kiba jur';

  @override
  String get clickWheelInputTextBarTutorialText =>
      'Pynkhih ia u thylliej jong phi da kaba jem bha sawdong u Wheel u Wheel ban pynpaw ia ka alphabet .';

  @override
  String get centerButtonInputTextBarScreenTutorialText =>
      'Pynkhih ia u button pdeng ban jied ia u alphabet ba la pynpaw .';

  @override
  String get nextButtonInputTextBarTutorialText =>
      'Pynkhih ia kane ka button ban pyndap ia ka jaka .';

  @override
  String get previousButtonInputTextBarTutorialText =>
      'Pynkhih ia une u button ban pynduh ia u briew uba khatduh .';

  @override
  String get menuButtonInputTextBarTutorialText =>
      'Pynkhih ia une u button ban khang ia u shabi bad ban iakynduh bad ki jingmih na ka jingwad .';

  @override
  String get allSongs => 'Baroh ki jingrwai';

  @override
  String get clickWheelSizeSettingTitle => 'Klick Ia Ka Jingialang';

  @override
  String get clickWheelSensitivitySettingTitle => 'Ka Jingsngewthuh kaba sniew';

  @override
  String get small => 'Barit';

  @override
  String get medium => 'Ba pdeng';

  @override
  String get large => 'Ba heh';

  @override
  String get veryLow => 'Kylla';

  @override
  String get low => 'Duna';

  @override
  String get high => 'Jrong';

  @override
  String get volumeModeSettingTitle => 'Ka Mode';

  @override
  String get appVolumeMode => 'Ap';

  @override
  String get systemVolumeMode => 'Ka rukom pyniaid';

  @override
  String get renamePlaylist => 'Rename Claylist';

  @override
  String get excludeDirectoriesScreenTitle => 'Pynduh noh ia ki jingpule';
}
