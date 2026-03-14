// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Tatar (`tt`).
class AppLocalizationsTt extends AppLocalizations {
  AppLocalizationsTt([String locale = 'tt']) : super(locale);

  @override
  String get appTitle => 'Классип';

  @override
  String get menuButtonText => 'Меню';

  @override
  String get audioAccessPermissionTitle => 'Аудио керү рөхсәте кирәк';

  @override
  String get audioAccessPermissionContent =>
      'Зинһар, безнең музыка файлларын уйнарга рөхсәт итәр өчен аудио файлларны рөхсәт итегез.';

  @override
  String get audioAccessPermissionPermanentlyDeniedTitle =>
      'Аудио керү рөхсәте кире кагылды';

  @override
  String get audioAccessPermissionPermanentlyDeniedContent =>
      'Зинһар, бу кушымтаны җайланма көйләүләрендә аудио файллар өчен керү мөмкинлеге бирегез.';

  @override
  String get menuScreenTitle => 'Меню';

  @override
  String get musicMenuScreenTitle => 'Музыка';

  @override
  String get nowPlayingScreenTitle => 'Хәзер уйнау';

  @override
  String get shuffleSongsMenuTitle => 'Җырларны алыштырыгыз';

  @override
  String get shuffleSettingTitle => 'Алыштыру';

  @override
  String get settingsScreenTitle => 'Көйләүләр';

  @override
  String get aboutScreenTitle => 'Турында';

  @override
  String get coverFlowScreenTitle => 'Каплау агымы';

  @override
  String get artistsScreenTitle => 'Рәссамнар';

  @override
  String get albumsScreenTitle => 'Альбомнар';

  @override
  String get songsScreenTitle => 'Җырлар';

  @override
  String nSongs(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countString Songsырлар',
      one: '1 .Ыр',
      zero: 'Songsырлар юк',
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
      other: '$countString Альбомнар',
      one: '1 Альбом',
      zero: 'Альбом юк',
    );
    return '$_temp0';
  }

  @override
  String get genresScreenTitle => 'Жанрлар';

  @override
  String get genreSongsScreenTitle => 'Жанр җырлары';

  @override
  String get deviceColorSettingTitle => 'Җайланма төсе';

  @override
  String get touchScreenSettingTitle => 'Сенсорлы экран';

  @override
  String get repeatModeSettingTitle => 'Кабатлау';

  @override
  String get repeatModeOne => 'Бер';

  @override
  String get repeatModeAll => 'Барысы да';

  @override
  String get vibrateSettingTitle => 'Тибрәнү';

  @override
  String get clickWheelSettingTitle => 'Руль тавышына басыгыз';

  @override
  String get splitScreenSettingTitle => 'Экран режимын бүлегез';

  @override
  String get touchSoundsDialogTitle => 'Ташу';

  @override
  String get touchSoundsDialogContent =>
      'Зинһар, тәгәрмәч тавышын ишетү өчен система көйләүләреннән кагыла';

  @override
  String get immersiveModeSettingTitle => 'Императив режим';

  @override
  String get showAppTutorialSettingTitle => 'Тәрбия';

  @override
  String get changeDirectorySettingTitle => 'Каталогны үзгәртү';

  @override
  String get donateSettingTitle => 'Бүләк итегез';

  @override
  String get donateSettingDescription =>
      'Сезгә бу кушымтаны яратсагыз, зинһар, иганә итегез.';

  @override
  String get versionAboutScreenTitle => 'Версия';

  @override
  String get madeWithLoveTitle => '❤️ белән ясалган';

  @override
  String get noMusicFilesFound => 'Музыка юк';

  @override
  String get noArtistsFound => 'Рәссам юк';

  @override
  String get noAlbumsFound => 'Альбомнар юк';

  @override
  String get unknownSong => 'Билгесез җыр';

  @override
  String get unknownArtist => 'Билгесез рәссам';

  @override
  String get unknownAlbum => 'Билгесез альбом';

  @override
  String get unknownGenre => 'Билгесез жанр';

  @override
  String get buttonConfirmText => 'Ярар';

  @override
  String get tileValueOn => 'Өстендә';

  @override
  String get tileValueOff => 'Сүндерелгән';

  @override
  String get commonOfText => '.әр сүзнең';

  @override
  String get pageNotFoundText => 'Бирелгән бит табылмады';

  @override
  String get commonErrorText => 'Хата';

  @override
  String get retryButtonText => 'Кабатлап кара';

  @override
  String get filePickerDialogTitle =>
      'Музыка өчен сканерлау өчен каталогны сайлагыз';

  @override
  String get searchScreenTitle => 'Эзләү';

  @override
  String get searchEmptyText => 'Эзләү нәтиҗәләре юк';

  @override
  String get searchResultsText => 'Эзләү нәтиҗәләре:';

  @override
  String get resultsForText => 'Нәтиҗәләр:';

  @override
  String get disableBatteryOptimizationTitle =>
      'Батарейка оптимизациясен сүндерегез';

  @override
  String get disableBatteryOptimizationContent =>
      'Зинһар өчен, бу кушымта өчен батареяны оптимизацияләүне сүндерегез, музыканың фонда уйнау өчен.';

  @override
  String get languageScreenTitle => 'Тел';

  @override
  String get themeSettingTitle => 'Тема';

  @override
  String get silverDeviceColor => 'Көмеш';

  @override
  String get blackDeviceColor => 'Кара';

  @override
  String get lightThemeTitle => 'Яктылык';

  @override
  String get darkThemeTitle => 'Караңгы';

  @override
  String get orangeDeviceColor => 'Кызгылт сары';

  @override
  String get yellowDeviceColor => 'Сары';

  @override
  String get goldDeviceColor => 'Алтын';

  @override
  String get purpleDeviceColor => 'Кызгылт';

  @override
  String get pinkDeviceColor => 'Алсу';

  @override
  String get brownDeviceColor => 'Коңгырт';

  @override
  String get redDeviceColor => 'Кызыл';

  @override
  String get blueDeviceColor => 'Зәңгәр';

  @override
  String get limeDeviceColor => 'Известь';

  @override
  String get greenDeviceColor => 'Яшел';

  @override
  String get resetSettingsTitle => 'Көйләүләрне яңадан торгызу';

  @override
  String get browseArtist => 'Рәссамны карау';

  @override
  String get browseAlbum => 'Альбомны карау';

  @override
  String get cancelText => 'Бетерү';

  @override
  String get playlistsScreenTitle => 'Плейлистлар';

  @override
  String get addToOnTheGoPlaylist => '-Бармагына өстәргә';

  @override
  String get addAlbumToOnTheGoPlaylist => '-Бармагына альбом өстәргә';

  @override
  String get removeSongFromThePlaylist => 'Плейлисттан чыгар';

  @override
  String get allAlbums => 'Барлык альбомнар';

  @override
  String get scanningMusicFiles => 'Музыкаль файлларны сканерлау';

  @override
  String get newPlaylist => 'Яңа Плейлист';

  @override
  String get savePlaylist => 'Плейлистны саклагыз';

  @override
  String get clearPlaylist => 'Плейлист';

  @override
  String get rescanMusicFilesSettingTitle => 'Музыка файллары';

  @override
  String get deviceControlMenuTutorialText =>
      'Менюга бару өчен, тәгәрмәчне җиңел генә күчерегез';

  @override
  String get centerButtonMenuTutorialText =>
      'Күренгән меню пунктын сайлау өчен үзәк төймәсенә басыгыз';

  @override
  String get playPauseMenuTutorialText =>
      'Җыр уйнау яки пауза ясау өчен бу төймәгә басыгыз';

  @override
  String get nextButtonMenuTutorialText =>
      'Киләсе җырга күчү өчен бу төймәгә басыгыз';

  @override
  String get previousButtonMenuTutorialText =>
      'Алдагы җырына кире кайту яки кире кайту өчен бу төймәгә басыгыз';

  @override
  String get menuButtonTutorialText =>
      'Алдагы менюга кире кайту өчен бу төймәгә басыгыз. Сез төп менюга турыдан-туры меню өчен бүтән экраннан баса аласыз.';

  @override
  String get deviceScreenMenuTutorialText =>
      'Бу дисплей экраны. Сенсорлы экран һәм бүленгән экран режимы килешү буенча алга барып, көйләүләрдә конфигурацияләнергә мөмкин.';

  @override
  String get deviceControlNowPlayingTutorialText =>
      'Тавышны көйләү өчен бармакны басыгыз';

  @override
  String get centerButtonNowPlayingTutorialText =>
      'Эзләү өчен цикл өчен үзәк төймәсенә басыгыз, Скраббер бар һәм слайдерны алыштырагыз. Өстәмә вариантларга керү өчен үзәк төймәсен басыгыз һәм тотыгыз.';

  @override
  String get nextButtonNowPlayingTutorialText =>
      'Songырны тиз алга җибәрү өчен бу төймәгә басыгыз һәм тотыгыз';

  @override
  String get previousButtonNowPlayingTutorialText =>
      'Җырны кире кайтару өчен бу төймәгә басыгыз һәм тотыгыз';

  @override
  String get editSongOption => 'Songырны үзгәртү';

  @override
  String get editSongScreenTitle => 'Songырны үзгәртү';

  @override
  String get editSongNameLabel => 'Җыр исеме';

  @override
  String get editSongArtistLabel => 'Рәссам исемнәре';

  @override
  String get editSongAlbumLabel => 'Альбом исеме';

  @override
  String get editSongGenreLabel => 'Жанр';

  @override
  String get editSongLyricsLabel => 'Текст';

  @override
  String get saveChangesButton => 'Changesзгәрешләрне саклагыз';

  @override
  String get clickWheelInputTextBarTutorialText =>
      'Алфавитны яктырту өчен бармакны җиңел генә кулланыгыз';

  @override
  String get centerButtonInputTextBarScreenTutorialText =>
      'Күрсәтелгән алфавитны сайлау өчен үзәк төймәсенә басыгыз';

  @override
  String get nextButtonInputTextBarTutorialText =>
      'Космос өстәү өчен бу төймәгә басыгыз';

  @override
  String get previousButtonInputTextBarTutorialText =>
      'Соңгы характерны бетерү өчен бу төймәгә басыгыз';

  @override
  String get menuButtonInputTextBarTutorialText =>
      'Клавиатура ябу һәм эзләү нәтиҗәләре белән аралашу өчен бу төймәгә басыгыз';

  @override
  String get allSongs => 'Барлык җырлар';

  @override
  String get clickWheelSizeSettingTitle => 'Тәгәрмәч зурлыгына басыгыз';

  @override
  String get clickWheelSensitivitySettingTitle =>
      'Тәгәрмәч сизгерлеге белән басыгыз';

  @override
  String get small => 'Кечкенә';

  @override
  String get medium => 'Урта';

  @override
  String get large => 'Зур';

  @override
  String get veryLow => 'Бик түбән';

  @override
  String get low => 'Түбән';

  @override
  String get high => 'Югары';

  @override
  String get volumeModeSettingTitle => 'Күләм режимы';

  @override
  String get appVolumeMode => 'Кушымта';

  @override
  String get systemVolumeMode => 'Система';

  @override
  String get renamePlaylist => 'Плейлистның исемен үзгәртү';

  @override
  String get excludeDirectoriesScreenTitle => 'Чыгару';
}
