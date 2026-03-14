// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Georgian (`ka`).
class AppLocalizationsKa extends AppLocalizations {
  AppLocalizationsKa([String locale = 'ka']) : super(locale);

  @override
  String get appTitle => 'კლასიფული';

  @override
  String get menuButtonText => 'მენიუ';

  @override
  String get audioAccessPermissionTitle => 'საჭიროა აუდიო წვდომის ნებართვა';

  @override
  String get audioAccessPermissionContent =>
      'გთხოვთ, მიანიჭოთ აუდიო ფაილების წვდომას, რომ მოგვმართოთ თქვენი მუსიკალური ფაილების დაკვრა.';

  @override
  String get audioAccessPermissionPermanentlyDeniedTitle =>
      'აუდიო წვდომის ნებართვა უარყო';

  @override
  String get audioAccessPermissionPermanentlyDeniedContent =>
      'გთხოვთ, მიანიჭოთ აუდიო ფაილებს ამ აპლიკაციისთვის მოწყობილობის პარამეტრებში, რათა მოგვცეს თქვენი მუსიკალური ფაილების დაკვრა.';

  @override
  String get menuScreenTitle => 'მენიუ';

  @override
  String get musicMenuScreenTitle => 'მუსიკა';

  @override
  String get nowPlayingScreenTitle => 'ახლა თამაშობს';

  @override
  String get shuffleSongsMenuTitle => 'Shuffle სიმღერები';

  @override
  String get shuffleSettingTitle => 'შფოთვა';

  @override
  String get settingsScreenTitle => 'პარამეტრები';

  @override
  String get aboutScreenTitle => 'გარშემო';

  @override
  String get coverFlowScreenTitle => 'საფარის ნაკადი';

  @override
  String get artistsScreenTitle => 'მხატვრები';

  @override
  String get albumsScreenTitle => 'ალბომები';

  @override
  String get songsScreenTitle => 'სიმღერები';

  @override
  String nSongs(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countString სიმღერები',
      one: '1 სიმღერა',
      zero: 'არ არის სიმღერები',
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
      other: '$countString ალბომები',
      one: '1 ალბომი',
      zero: 'არ არის ალბომი',
    );
    return '$_temp0';
  }

  @override
  String get genresScreenTitle => 'ჟანრები';

  @override
  String get genreSongsScreenTitle => 'ჟანრული სიმღერები';

  @override
  String get deviceColorSettingTitle => 'მოწყობილობის ფერი';

  @override
  String get touchScreenSettingTitle => 'სენსორული ეკრანი ჩართულია';

  @override
  String get repeatModeSettingTitle => 'გამეორება';

  @override
  String get repeatModeOne => 'ერთი';

  @override
  String get repeatModeAll => 'ყველა';

  @override
  String get vibrateSettingTitle => 'ქანაობა';

  @override
  String get clickWheelSettingTitle => 'დააჭირეთ ბორბლის ხმებს';

  @override
  String get splitScreenSettingTitle => 'გაყოფილი ეკრანის რეჟიმი';

  @override
  String get touchSoundsDialogTitle => 'შეხების ხმები';

  @override
  String get touchSoundsDialogContent =>
      'გთხოვთ, ჩართოთ შეხების ხმები სისტემის პარამეტრებიდან, რომ მოისმინოთ დაჭერით ბორბლის ხმები';

  @override
  String get immersiveModeSettingTitle => 'იმერული რეჟიმი';

  @override
  String get showAppTutorialSettingTitle => 'აჩვენეთ გაკვეთილი';

  @override
  String get changeDirectorySettingTitle => 'შეცვალეთ დირექტორია';

  @override
  String get donateSettingTitle => 'ჩუქება';

  @override
  String get donateSettingDescription =>
      'თუ მოგწონთ ეს აპლიკაცია, გთხოვთ, გაითვალისწინოთ შემოწირულობა.';

  @override
  String get versionAboutScreenTitle => 'ვერსია';

  @override
  String get madeWithLoveTitle => 'დამზადებულია ❤ მიერ';

  @override
  String get noMusicFilesFound => 'არა მუსიკა';

  @override
  String get noArtistsFound => 'არ მხატვრები';

  @override
  String get noAlbumsFound => 'არ არის ალბომები';

  @override
  String get unknownSong => 'უცნობი სიმღერა';

  @override
  String get unknownArtist => 'უცნობი მხატვარი';

  @override
  String get unknownAlbum => 'უცნობი ალბომი';

  @override
  String get unknownGenre => 'უცნობი ჟანრი';

  @override
  String get buttonConfirmText => 'კარგი';

  @override
  String get tileValueOn => '-ზე';

  @override
  String get tileValueOff => '-დან';

  @override
  String get commonOfText => '*';

  @override
  String get pageNotFoundText => 'მოცემული გვერდი ვერ მოიძებნა';

  @override
  String get commonErrorText => 'შეცდომა';

  @override
  String get retryButtonText => 'გამოცხადება';

  @override
  String get filePickerDialogTitle =>
      'შეარჩიეთ დირექტორია, რომ სკანირდეს მუსიკისთვის';

  @override
  String get searchScreenTitle => 'ძებნა';

  @override
  String get searchEmptyText => 'ძიების შედეგები არ არის';

  @override
  String get searchResultsText => 'ძიების შედეგები:';

  @override
  String get resultsForText => 'შედეგები:';

  @override
  String get disableBatteryOptimizationTitle => 'გამორთეთ ბატარეის ოპტიმიზაცია';

  @override
  String get disableBatteryOptimizationContent =>
      'გთხოვთ, გამორთოთ ბატარეის ოპტიმიზაცია ამ აპლიკაციისთვის მოწყობილობის პარამეტრებში, რათა მუსიკის ფონის დაკვრა მოხდეს.';

  @override
  String get languageScreenTitle => 'ენა';

  @override
  String get themeSettingTitle => 'თემა';

  @override
  String get silverDeviceColor => 'ვერცხლი';

  @override
  String get blackDeviceColor => 'შავი';

  @override
  String get lightThemeTitle => 'სინათლე';

  @override
  String get darkThemeTitle => 'ბნელი';

  @override
  String get orangeDeviceColor => 'ნარინჯისფერი';

  @override
  String get yellowDeviceColor => 'ყვითელი';

  @override
  String get goldDeviceColor => 'ოქრო';

  @override
  String get purpleDeviceColor => 'მეწამული';

  @override
  String get pinkDeviceColor => 'ვარდისფერი';

  @override
  String get brownDeviceColor => 'ყავისფერი';

  @override
  String get redDeviceColor => 'წითელი';

  @override
  String get blueDeviceColor => 'ლურჯი';

  @override
  String get limeDeviceColor => 'ცაცხვი';

  @override
  String get greenDeviceColor => 'მწვანე';

  @override
  String get resetSettingsTitle => 'პარამეტრების გადატვირთვა';

  @override
  String get browseArtist => 'დაათვალიერეთ მხატვარი';

  @override
  String get browseAlbum => 'დაათვალიერეთ ალბომი';

  @override
  String get cancelText => 'გაუქმება';

  @override
  String get playlistsScreenTitle => 'დასაკრავი სიები';

  @override
  String get addToOnTheGoPlaylist => 'დაამატეთ on-go';

  @override
  String get addAlbumToOnTheGoPlaylist => 'დაამატეთ ალბომი on-the-go';

  @override
  String get removeSongFromThePlaylist => 'ამოიღეთ დასაკრავი სიიდან';

  @override
  String get allAlbums => 'ყველა ალბომი';

  @override
  String get scanningMusicFiles => 'მუსიკალური ფაილების სკანირება';

  @override
  String get newPlaylist => 'ახალი დასაკრავი სია';

  @override
  String get savePlaylist => 'დაზოგე დასაკრავი სია';

  @override
  String get clearPlaylist => 'წმინდა დასაკრავი სია';

  @override
  String get rescanMusicFilesSettingTitle => 'Rescan Music Files';

  @override
  String get deviceControlMenuTutorialText =>
      'თქვენი ცერა თითი მსუბუქად გადაიტანეთ დაჭერით ბორბლის გარშემო, მენიუს ნავიგაციისთვის';

  @override
  String get centerButtonMenuTutorialText =>
      'დააჭირეთ ღილაკს ცენტრის ღილაკს მენიუ მენიუს ელემენტის შესარჩევად';

  @override
  String get playPauseMenuTutorialText =>
      'დააჭირეთ ამ ღილაკს, რომ შეასრულოთ ან შეაჩეროთ სიმღერა';

  @override
  String get nextButtonMenuTutorialText =>
      'დააჭირეთ ამ ღილაკს, რომ გამოტოვოთ შემდეგი სიმღერა';

  @override
  String get previousButtonMenuTutorialText =>
      'დააჭირეთ ამ ღილაკს, რომ გადახედოთ ან დაუბრუნდეთ წინა სიმღერას';

  @override
  String get menuButtonTutorialText =>
      'დააჭირეთ ამ ღილაკს წინა მენიუში დასაბრუნებლად. თქვენ შეგიძლიათ დააჭიროთ და გამართოთ იგი ნებისმიერი სხვა ეკრანიდან, რომ პირდაპირ მენიუში გადასასვლელად.';

  @override
  String get deviceScreenMenuTutorialText =>
      'ეს არის ეკრანის ეკრანი. სენსორული ეკრანი და Split ეკრანის რეჟიმი ჩართულია ნაგულისხმევი და შესაძლებელია კონფიგურაცია შემდგომ პარამეტრებში.';

  @override
  String get deviceControlNowPlayingTutorialText =>
      'გადაიტანეთ თქვენი თითი დაჭერით ბორბლის გარშემო, მოცულობის შესწორების მიზნით';

  @override
  String get centerButtonNowPlayingTutorialText =>
      'დააჭირეთ ღილაკს ცენტრის ღილაკს, რომლითაც Seeg Bar, Scrubber Bar და Shuffle Slider. დააჭირეთ და დააჭირეთ ღილაკს ცენტრის ღილაკს დამატებითი ვარიანტების მისაღებად.';

  @override
  String get nextButtonNowPlayingTutorialText =>
      'დააჭირეთ და დააჭირეთ ამ ღილაკს, რომ სწრაფად გადადოთ სიმღერა';

  @override
  String get previousButtonNowPlayingTutorialText =>
      'დააჭირეთ და დააჭირეთ ამ ღილაკს სიმღერის გადასინჯვისთვის';

  @override
  String get editSongOption => 'სიმღერის რედაქტირება';

  @override
  String get editSongScreenTitle => 'სიმღერის რედაქტირება';

  @override
  String get editSongNameLabel => 'სიმღერის სახელი';

  @override
  String get editSongArtistLabel => 'მხატვრების სახელები';

  @override
  String get editSongAlbumLabel => 'ალბომის სახელი';

  @override
  String get editSongGenreLabel => 'ჟანრი';

  @override
  String get editSongLyricsLabel => 'ტექსტი';

  @override
  String get saveChangesButton => 'ცვლილებების შენახვა';

  @override
  String get clickWheelInputTextBarTutorialText =>
      'ანბანის ხაზგასასმელად მიიტანეთ თქვენი ცერა თითი მსუბუქად';

  @override
  String get centerButtonInputTextBarScreenTutorialText =>
      'დააჭირეთ ცენტრის ღილაკს, რომ შეარჩიოთ მონიშნული ანბანი';

  @override
  String get nextButtonInputTextBarTutorialText =>
      'დააჭირეთ ამ ღილაკს, რომ დაამატოთ სივრცე';

  @override
  String get previousButtonInputTextBarTutorialText =>
      'დააჭირეთ ამ ღილაკს ბოლო პერსონაჟის წაშლისთვის';

  @override
  String get menuButtonInputTextBarTutorialText =>
      'დააჭირეთ ამ ღილაკს კლავიშის დახურვისთვის და ძიების შედეგებთან ურთიერთობისთვის';

  @override
  String get allSongs => 'ყველა სიმღერა';

  @override
  String get clickWheelSizeSettingTitle => 'დააჭირეთ ბორბლის ზომას';

  @override
  String get clickWheelSensitivitySettingTitle =>
      'დააჭირეთ ბორბლის მგრძნობელობას';

  @override
  String get small => 'პატარა';

  @override
  String get medium => 'საშუალო';

  @override
  String get large => 'დიდი';

  @override
  String get veryLow => 'ძალიან დაბალი';

  @override
  String get low => 'დაბლა';

  @override
  String get high => 'მაღალი';

  @override
  String get volumeModeSettingTitle => 'მოცულობის რეჟიმი';

  @override
  String get appVolumeMode => 'აპი';

  @override
  String get systemVolumeMode => 'სისტემა';

  @override
  String get renamePlaylist => 'დაარქმეთ დასაკრავი სია';

  @override
  String get excludeDirectoriesScreenTitle => 'გამორიცხეთ დირექტორიები';
}
