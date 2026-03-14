// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Batak Karo (`btx`).
class AppLocalizationsBtx extends AppLocalizations {
  AppLocalizationsBtx([String locale = 'btx']) : super(locale);

  @override
  String get appTitle => 'Klasis';

  @override
  String get menuButtonText => 'MENU';

  @override
  String get audioAccessPermissionTitle => 'Akses Audio Iperluken .';

  @override
  String get audioAccessPermissionContent =>
      'Tolong berekenndu akses file audio gelah banci kami mutarken file musikndu.';

  @override
  String get audioAccessPermissionPermanentlyDeniedTitle =>
      'Akses Audio si I Denied .';

  @override
  String get audioAccessPermissionPermanentlyDeniedContent =>
      'Tolong berekenndu akses file audio guna aplikasi enda i bas pengaturen perangkat gelah banci kami mutarken file musikndu.';

  @override
  String get menuScreenTitle => 'Menu';

  @override
  String get musicMenuScreenTitle => 'Musik';

  @override
  String get nowPlayingScreenTitle => 'Gundari Ermain';

  @override
  String get shuffleSongsMenuTitle => 'Lagu Shuffle';

  @override
  String get shuffleSettingTitle => 'asa ngasup';

  @override
  String get settingsScreenTitle => 'Pengaturan';

  @override
  String get aboutScreenTitle => 'Kerna';

  @override
  String get coverFlowScreenTitle => 'Aliren Penutup';

  @override
  String get artistsScreenTitle => 'Artis';

  @override
  String get albumsScreenTitle => 'Album';

  @override
  String get songsScreenTitle => 'Ende-enden';

  @override
  String nSongs(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countString Lagu-lagu',
      one: '1 Ende',
      zero: 'La lit Lagu',
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
      one: '1 Album',
      zero: 'La lit Albumna',
    );
    return '$_temp0';
  }

  @override
  String get genresScreenTitle => 'Genres';

  @override
  String get genreSongsScreenTitle => 'Lagu Genre';

  @override
  String get deviceColorSettingTitle => 'Warna Alat';

  @override
  String get touchScreenSettingTitle => 'Sentuh Layar si iaktifken .';

  @override
  String get repeatModeSettingTitle => 'Siulangi';

  @override
  String get repeatModeOne => 'Sada';

  @override
  String get repeatModeAll => 'Kerina';

  @override
  String get vibrateSettingTitle => 'Bergetaren';

  @override
  String get clickWheelSettingTitle => 'Klik Suara Roda .';

  @override
  String get splitScreenSettingTitle => 'Split Layar Mode .';

  @override
  String get touchSoundsDialogTitle => 'Sentuh Sora';

  @override
  String get touchSoundsDialogContent =>
      'Tolong Aktifken Sound Sounds ibas Pengaturan Sistem nari guna megiken sora roda klik .';

  @override
  String get immersiveModeSettingTitle => 'Mode Immersif';

  @override
  String get showAppTutorialSettingTitle => 'Cidahken Tutorial';

  @override
  String get changeDirectorySettingTitle => 'Perubahen Direktori';

  @override
  String get donateSettingTitle => 'Cukong';

  @override
  String get donateSettingDescription =>
      'Adi ngena atendu aplikasi enda, perdiatekenlah sumbangan.';

  @override
  String get versionAboutScreenTitle => 'Versi';

  @override
  String get madeWithLoveTitle => 'Ibahan alu ❤️ alu .';

  @override
  String get noMusicFilesFound => 'La lit Musik';

  @override
  String get noArtistsFound => 'Labo Seniman';

  @override
  String get noAlbumsFound => 'Labo Album';

  @override
  String get unknownSong => 'Rende si la itandai';

  @override
  String get unknownArtist => 'Artis si la itandai';

  @override
  String get unknownAlbum => 'Album si la itandai';

  @override
  String get unknownGenre => 'Genre si la itandai';

  @override
  String get buttonConfirmText => 'UE';

  @override
  String get tileValueOn => 'Datas';

  @override
  String get tileValueOff => 'Mate';

  @override
  String get commonOfText => 'oleh';

  @override
  String get pageNotFoundText => 'I bas halamen si ibereken la lit si idat .';

  @override
  String get commonErrorText => 'Rusak';

  @override
  String get retryButtonText => 'Iusahaken';

  @override
  String get filePickerDialogTitle => 'Pilihlah Direktori Scan guna Musik .';

  @override
  String get searchScreenTitle => 'Terdaram';

  @override
  String get searchEmptyText => 'La lit Hasil Pencarian .';

  @override
  String get searchResultsText => 'Hasil Pencarian:';

  @override
  String get resultsForText => 'Hasilna guna:';

  @override
  String get disableBatteryOptimizationTitle =>
      'Optimalisasi Baterai Nonaktif .';

  @override
  String get disableBatteryOptimizationContent =>
      'Silahkan menonaktifken optimasi baterai guna aplikasi enda ibas pengaturen perangkat guna banci latar belakang pemutaren musik.';

  @override
  String get languageScreenTitle => 'Bahasa';

  @override
  String get themeSettingTitle => 'Tema';

  @override
  String get silverDeviceColor => 'Perak';

  @override
  String get blackDeviceColor => 'Biring';

  @override
  String get lightThemeTitle => 'Terang';

  @override
  String get darkThemeTitle => 'Gelap';

  @override
  String get orangeDeviceColor => 'Rimo';

  @override
  String get yellowDeviceColor => 'Megersing';

  @override
  String get goldDeviceColor => 'Emas';

  @override
  String get purpleDeviceColor => 'Terong';

  @override
  String get pinkDeviceColor => 'Merah Jambu';

  @override
  String get brownDeviceColor => 'Coklat';

  @override
  String get redDeviceColor => 'Megara';

  @override
  String get blueDeviceColor => 'Biru';

  @override
  String get limeDeviceColor => 'Kutuken';

  @override
  String get greenDeviceColor => 'Meratah';

  @override
  String get resetSettingsTitle => 'Pengaturan Reset';

  @override
  String get browseArtist => 'Artis Browse';

  @override
  String get browseAlbum => 'Jelajahi Album';

  @override
  String get cancelText => 'la surung';

  @override
  String get playlistsScreenTitle => 'main daftar';

  @override
  String get addToOnTheGoPlaylist => 'Tambahken ku On-The-Go .';

  @override
  String get addAlbumToOnTheGoPlaylist => 'Tambahken Album ku On-The-Go .';

  @override
  String get removeSongFromThePlaylist => 'Ibuat i bas daftar Putar .';

  @override
  String get allAlbums => 'Kerina Album';

  @override
  String get scanningMusicFiles => 'Scan Bingkai Berkas Musik .';

  @override
  String get newPlaylist => 'Daftar Putar si Mbaru';

  @override
  String get savePlaylist => 'Simpan Daftar Putar .';

  @override
  String get clearPlaylist => 'Daftar Putar si jelas .';

  @override
  String get rescanMusicFilesSettingTitle => 'Berkas Musik Rescan .';

  @override
  String get deviceControlMenuTutorialText =>
      'Pindahken jempolndu ringan-ringan i sekelewet Roda Klik guna navigasi menu .';

  @override
  String get centerButtonMenuTutorialText =>
      'Tekan tombol pusat guna milih item menu si isoroti .';

  @override
  String get playPauseMenuTutorialText =>
      'Tekan tombol enda guna mainken ntah pe ngadiken sada lagu .';

  @override
  String get nextButtonMenuTutorialText =>
      'Tekan tombol enda guna skip ku lagu selanjutna .';

  @override
  String get previousButtonMenuTutorialText =>
      'Tekan tombol enda guna mulih ntah pe mulihken ku lagu si enggo lewat .';

  @override
  String get menuButtonTutorialText =>
      'Tekan tombol enda guna mulihken ku menu si enggo lewat. Banci itekanndu janah itahanndu arah layar si deban guna langsung ku menu utama.';

  @override
  String get deviceScreenMenuTutorialText =>
      'Enda me layar tampilen. Sentuhan Layar ras Split Mode Layar iaktifken secara default ras banci ikonfigurasi lebih lanjut ibas pengaturen.';

  @override
  String get deviceControlNowPlayingTutorialText =>
      'Pindahken jempolndu i sekelewet Roda Klik guna menyesuaiken volume .';

  @override
  String get centerButtonNowPlayingTutorialText =>
      'Tekan tombol Pusat guna ersepeda arah bar, bar scrubber ras slider shuffle. Tekan ras tahan tombol Pusat guna ndatken pilihen tambahen.';

  @override
  String get nextButtonNowPlayingTutorialText =>
      'Tekan ras tahan tombol enda guna cepat maju lagu .';

  @override
  String get previousButtonNowPlayingTutorialText =>
      'Tekan ras tahan tombol enda guna mulihi lagu .';

  @override
  String get editSongOption => 'Edit Lagu';

  @override
  String get editSongScreenTitle => 'Edit Lagu';

  @override
  String get editSongNameLabel => 'Nama Lagu';

  @override
  String get editSongArtistLabel => 'Gelar Artis';

  @override
  String get editSongAlbumLabel => 'Gelar Album';

  @override
  String get editSongGenreLabel => 'Adum';

  @override
  String get editSongLyricsLabel => 'Lirik';

  @override
  String get saveChangesButton => 'Simpan Perubahen';

  @override
  String get clickWheelInputTextBarTutorialText =>
      'Pindahken jempolndu ringan i sekelewet Roda Klik guna menyoroti alfabet .';

  @override
  String get centerButtonInputTextBarScreenTutorialText =>
      'Tekan tombol pusat guna milih alfabet si isoroti .';

  @override
  String get nextButtonInputTextBarTutorialText =>
      'Tekan tombol enda guna nambahi ruang .';

  @override
  String get previousButtonInputTextBarTutorialText =>
      'Tekan tombol enda guna menghapus karakter si terakhir .';

  @override
  String get menuButtonInputTextBarTutorialText =>
      'Tekan tombol enda guna nutup keyboard ras berinteraksi ras hasil pencarian .';

  @override
  String get allSongs => 'Kerina Lagu';

  @override
  String get clickWheelSizeSettingTitle => 'Klik Ukuren Roda .';

  @override
  String get clickWheelSensitivitySettingTitle => 'Klik Sensitivitas Roda .';

  @override
  String get small => 'Kitik';

  @override
  String get medium => 'Sedang';

  @override
  String get large => 'Galang';

  @override
  String get veryLow => 'Sangat Bahan';

  @override
  String get low => 'Teruh';

  @override
  String get high => 'Meganjang';

  @override
  String get volumeModeSettingTitle => 'Mode Volume';

  @override
  String get appVolumeMode => 'App';

  @override
  String get systemVolumeMode => 'Sistem';

  @override
  String get renamePlaylist => 'Daftar Putar Kereta Sibadia';

  @override
  String get excludeDirectoriesScreenTitle => 'Direktori si luar .';
}
