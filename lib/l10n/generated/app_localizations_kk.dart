// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Kazakh (`kk`).
class AppLocalizationsKk extends AppLocalizations {
  AppLocalizationsKk([String locale = 'kk']) : super(locale);

  @override
  String get appTitle => 'Классипод';

  @override
  String get menuButtonText => 'Дастархан мәзірі';

  @override
  String get audioAccessPermissionTitle => 'Аудио қатынау рұқсаты қажет';

  @override
  String get audioAccessPermissionContent =>
      'Музыкалық файлдарды ойнауға мүмкіндік беретін аудио файлдарға кіруді сұраймыз.';

  @override
  String get audioAccessPermissionPermanentlyDeniedTitle =>
      'Дыбыстық қатынау рұқсаты қабылданбады';

  @override
  String get audioAccessPermissionPermanentlyDeniedContent =>
      'Музыкалық файлдарды ойнатуға мүмкіндік беру үшін осы қолданба үшін Audio файлдарына кіруді беріңіз.';

  @override
  String get menuScreenTitle => 'Дастархан мәзірі';

  @override
  String get musicMenuScreenTitle => 'Музыка';

  @override
  String get nowPlayingScreenTitle => 'Қазір ойнау';

  @override
  String get shuffleSongsMenuTitle => 'Кездейсоқ әндер';

  @override
  String get shuffleSettingTitle => 'Қырқау';

  @override
  String get settingsScreenTitle => 'Параметрлер';

  @override
  String get aboutScreenTitle => 'Жөнінде';

  @override
  String get coverFlowScreenTitle => 'Қақпақты жабу';

  @override
  String get artistsScreenTitle => 'Суретшілер';

  @override
  String get albumsScreenTitle => 'Альбомдар';

  @override
  String get songsScreenTitle => 'Әндер';

  @override
  String nSongs(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countString Әндер',
      one: '1 Ән',
      zero: 'Әндер жоқ',
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
      other: '$countString альбомдар',
      one: '1 альбом',
      zero: 'Альбомдар жоқ',
    );
    return '$_temp0';
  }

  @override
  String get genresScreenTitle => 'Жанрлар';

  @override
  String get genreSongsScreenTitle => 'Жанр әндері';

  @override
  String get deviceColorSettingTitle => 'Құрылғы түсі';

  @override
  String get touchScreenSettingTitle => 'Сенсорлық экран қосылған';

  @override
  String get repeatModeSettingTitle => 'Қайталау';

  @override
  String get repeatModeOne => 'Бір';

  @override
  String get repeatModeAll => 'Бірі';

  @override
  String get vibrateSettingTitle => 'Дірілдеу';

  @override
  String get clickWheelSettingTitle => 'Доңғалақты дыбыстарды нұқыңыз';

  @override
  String get splitScreenSettingTitle => 'Бөлу экраны режимі';

  @override
  String get touchSoundsDialogTitle => 'Дыбыстарды түртіңіз';

  @override
  String get touchSoundsDialogContent =>
      'Доңғалақты дыбыстарды есту үшін жүйелік параметрлерден сенсорлық дыбыстарды қосыңыз';

  @override
  String get immersiveModeSettingTitle => 'Имерсивті режим';

  @override
  String get showAppTutorialSettingTitle => 'Оқулық';

  @override
  String get changeDirectorySettingTitle => 'Каталогты өзгерту';

  @override
  String get donateSettingTitle => 'Қию';

  @override
  String get donateSettingDescription =>
      'Егер сізге осы бағдарлама ұнаса, сыйға тарту туралы ойланыңыз.';

  @override
  String get versionAboutScreenTitle => 'Нұсқа';

  @override
  String get madeWithLoveTitle => '❤️ арқылы жасалған';

  @override
  String get noMusicFilesFound => 'Музыка жоқ';

  @override
  String get noArtistsFound => 'Ешқандай суретшілер жоқ';

  @override
  String get noAlbumsFound => 'Альбомдар жоқ';

  @override
  String get unknownSong => 'Белгісіз ән';

  @override
  String get unknownArtist => 'Белгісіз суретші';

  @override
  String get unknownAlbum => 'Белгісіз альбом';

  @override
  String get unknownGenre => 'Белгісіз жанр';

  @override
  String get buttonConfirmText => 'Жарайды';

  @override
  String get tileValueOn => 'Ішінде';

  @override
  String get tileValueOff => 'Ажыратылған';

  @override
  String get commonOfText => '-ден';

  @override
  String get pageNotFoundText => 'Берілген парақ табылмады';

  @override
  String get commonErrorText => 'Қателік';

  @override
  String get retryButtonText => 'Қайталау';

  @override
  String get filePickerDialogTitle =>
      'Музыканы сканерлеу үшін каталогты таңдаңыз';

  @override
  String get searchScreenTitle => 'Іздеу';

  @override
  String get searchEmptyText => 'Іздеу нәтижелері жоқ';

  @override
  String get searchResultsText => 'Іздеу нәтижелері:';

  @override
  String get resultsForText => 'Нәтижелері:';

  @override
  String get disableBatteryOptimizationTitle =>
      'Батареяны оңтайландыруды өшіріңіз';

  @override
  String get disableBatteryOptimizationContent =>
      'Музыканы фондық ойнатуға мүмкіндік беру үшін осы бағдарлама үшін батареяның оңтайландыруын өшіріңіз.';

  @override
  String get languageScreenTitle => 'Тіл';

  @override
  String get themeSettingTitle => 'Тақырып';

  @override
  String get silverDeviceColor => 'Күміс';

  @override
  String get blackDeviceColor => 'Қара';

  @override
  String get lightThemeTitle => 'Жарық';

  @override
  String get darkThemeTitle => 'Қараңғы';

  @override
  String get orangeDeviceColor => 'Апельсин';

  @override
  String get yellowDeviceColor => 'Сары';

  @override
  String get goldDeviceColor => 'Алтын';

  @override
  String get purpleDeviceColor => 'Күлгін';

  @override
  String get pinkDeviceColor => 'Қызғылт';

  @override
  String get brownDeviceColor => 'Қоңыр';

  @override
  String get redDeviceColor => 'Қызыл';

  @override
  String get blueDeviceColor => 'Көк';

  @override
  String get limeDeviceColor => 'Әк';

  @override
  String get greenDeviceColor => 'Жасыл';

  @override
  String get resetSettingsTitle => 'Параметрлерді қалпына келтіру';

  @override
  String get browseArtist => 'Суретшіні қарап шығыңыз';

  @override
  String get browseAlbum => 'Шолу альбомын қараңыз';

  @override
  String get cancelText => 'Күшін жою';

  @override
  String get playlistsScreenTitle => 'Ойнату тізімдері';

  @override
  String get addToOnTheGoPlaylist => 'Жолға қосу';

  @override
  String get addAlbumToOnTheGoPlaylist => 'Альбом қосып, жалғаңыз';

  @override
  String get removeSongFromThePlaylist => 'Ойнату тізімінен алыңыз';

  @override
  String get allAlbums => 'Барлық альбомдар';

  @override
  String get scanningMusicFiles => 'Музыкалық файлдарды сканерлеу';

  @override
  String get newPlaylist => 'Жаңа ойнату тізімі';

  @override
  String get savePlaylist => 'Ойнату тізімін сақтаңыз';

  @override
  String get clearPlaylist => 'Айқын ойнату тізімі';

  @override
  String get rescanMusicFilesSettingTitle => 'Resian музыкалық файлдары';

  @override
  String get deviceControlMenuTutorialText =>
      'Мәзірді шарлау үшін бас бармағыңызды шертуді шертуді шерту';

  @override
  String get centerButtonMenuTutorialText =>
      'Бөлектелген мәзір элементін таңдау үшін Орталық түймесін басыңыз';

  @override
  String get playPauseMenuTutorialText =>
      'Әнді ойнату немесе кідірту үшін осы түймені басыңыз';

  @override
  String get nextButtonMenuTutorialText =>
      'Келесі әнге өту үшін осы батырманы басыңыз';

  @override
  String get previousButtonMenuTutorialText =>
      'Алдыңғы әнге қайта оралу үшін осы батырманы басыңыз';

  @override
  String get menuButtonTutorialText =>
      'Алдыңғы мәзірге оралу үшін осы батырманы басыңыз. Негізгі мәзірге тікелей өту үшін оны басқа экраннан басып ұстап тұруға болады.';

  @override
  String get deviceScreenMenuTutorialText =>
      'Бұл дисплей экраны. Сенсорлы экран және бөлінген экран режимі әдепкі бойынша қосылады және оны басқа параметрлерде теңшеуге болады.';

  @override
  String get deviceControlNowPlayingTutorialText =>
      'Дыбыс деңгейін реттеу үшін бас бармағыңызды дөңгелекті шерту';

  @override
  String get centerButtonNowPlayingTutorialText =>
      'Жолақты, скраббер жолағының және араластырғыш жүгірткіні цикл алу үшін Орталық түймесін басыңыз. Қосымша опцияларға қол жеткізу үшін Орталық түймесін басып тұрыңыз.';

  @override
  String get nextButtonNowPlayingTutorialText =>
      'Әнді алға қарай жылдам басып тұрыңыз';

  @override
  String get previousButtonNowPlayingTutorialText =>
      'Әнді кері айналдыру үшін осы түймені басып тұрыңыз';

  @override
  String get editSongOption => 'Әнді өңдеңіз';

  @override
  String get editSongScreenTitle => 'Әнді өңдеңіз';

  @override
  String get editSongNameLabel => 'Ән атауы';

  @override
  String get editSongArtistLabel => 'Суретшінің есімдері';

  @override
  String get editSongAlbumLabel => 'Альбом атауы';

  @override
  String get editSongGenreLabel => 'Жанр';

  @override
  String get editSongLyricsLabel => 'Лирика';

  @override
  String get saveChangesButton => 'Өзгерістерді сақтаңыз';

  @override
  String get clickWheelInputTextBarTutorialText =>
      'Алфавитті бөлектеу үшін бас бармағыңызды шертуді шертіңіз';

  @override
  String get centerButtonInputTextBarScreenTutorialText =>
      'Бөлектелген әліпбиді таңдау үшін Орталық түймесін басыңыз';

  @override
  String get nextButtonInputTextBarTutorialText =>
      'Бос орын қосу үшін осы түймені басыңыз';

  @override
  String get previousButtonInputTextBarTutorialText =>
      'Соңғы таңбаны жою үшін осы түймені басыңыз';

  @override
  String get menuButtonInputTextBarTutorialText =>
      'Пернетақтаны жабу және іздеу нәтижелерімен өзара әрекеттесу үшін осы түймені басыңыз';

  @override
  String get allSongs => 'Барлық әндер';

  @override
  String get clickWheelSizeSettingTitle => 'Доңғалақтың өлшемін таңдаңыз';

  @override
  String get clickWheelSensitivitySettingTitle =>
      'Доңғалақты сезімталдық түймесін басыңыз';

  @override
  String get small => 'Кішкене';

  @override
  String get medium => 'Амал';

  @override
  String get large => 'Ірі';

  @override
  String get veryLow => 'Өте төмен';

  @override
  String get low => 'Аласа';

  @override
  String get high => 'Биік';

  @override
  String get volumeModeSettingTitle => 'Көлем режимі';

  @override
  String get appVolumeMode => 'Бағдарша';

  @override
  String get systemVolumeMode => 'Жүйе';

  @override
  String get renamePlaylist => 'Ойнату тізімінің атын өзгерту';

  @override
  String get excludeDirectoriesScreenTitle => 'Дәрігерлерді алып тастау';
}
