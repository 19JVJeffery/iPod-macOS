// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Batak Toba (`bbc`).
class AppLocalizationsBbc extends AppLocalizations {
  AppLocalizationsBbc([String locale = 'bbc']) : super(locale);

  @override
  String get appTitle => 'KlasiPod .';

  @override
  String get menuButtonText => 'MENUAL';

  @override
  String get audioAccessPermissionTitle => 'Izin Akses Audio Dihaporluhon .';

  @override
  String get audioAccessPermissionContent =>
      'Molo boi hami mambahen file audio asa boi hami mamutar file musikmuna.';

  @override
  String get audioAccessPermissionPermanentlyDeniedTitle =>
      'Izin Akses Audio .';

  @override
  String get audioAccessPermissionPermanentlyDeniedContent =>
      'Mohon lehon akses berkas audio tu aplikasi on di pengaturan perangkat asa boi hami mamutar file musikmuna.';

  @override
  String get menuScreenTitle => 'Menu';

  @override
  String get musicMenuScreenTitle => 'Musik';

  @override
  String get nowPlayingScreenTitle => 'Saonari Marmeam .';

  @override
  String get shuffleSongsMenuTitle => 'Antarss Lagu .';

  @override
  String get shuffleSettingTitle => 'Angkup';

  @override
  String get settingsScreenTitle => 'Pengaturan';

  @override
  String get aboutScreenTitle => 'Anggo';

  @override
  String get coverFlowScreenTitle => 'Cover Arus .';

  @override
  String get artistsScreenTitle => 'Artis';

  @override
  String get albumsScreenTitle => 'Sude';

  @override
  String get songsScreenTitle => 'Lagu Batak .';

  @override
  String nSongs(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countString lagu batak',
      one: '1 ende',
      zero: 'dang adong lagu',
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
      zero: 'dang adong album',
    );
    return '$_temp0';
  }

  @override
  String get genresScreenTitle => 'Unduk';

  @override
  String get genreSongsScreenTitle => 'Lagu Genre .';

  @override
  String get deviceColorSettingTitle => 'Warna Perangkat .';

  @override
  String get touchScreenSettingTitle => 'Sentuh Layar Aktif .';

  @override
  String get repeatModeSettingTitle => 'Mangulas';

  @override
  String get repeatModeOne => 'Sada';

  @override
  String get repeatModeAll => 'Sasude';

  @override
  String get vibrateSettingTitle => 'Getaran';

  @override
  String get clickWheelSettingTitle => 'Klik ma Suara Roda .';

  @override
  String get splitScreenSettingTitle => 'Mode Layar Belah .';

  @override
  String get touchSoundsDialogTitle => 'Soara Sentuh .';

  @override
  String get touchSoundsDialogContent =>
      'Tolong Aktifhon ma Suara Sentuh sian Pengaturan Sistem laho mambege soara ni roda klik .';

  @override
  String get immersiveModeSettingTitle => 'Mode na mansai balga .';

  @override
  String get showAppTutorialSettingTitle => 'Patuduhon Tuturial .';

  @override
  String get changeDirectorySettingTitle => 'Mangganti Direktori .';

  @override
  String get donateSettingTitle => 'Manumbang';

  @override
  String get donateSettingDescription =>
      'Molo lomo rohamuna tu aplikasi on, pingkirhon ma mangalehon.';

  @override
  String get versionAboutScreenTitle => 'Persi';

  @override
  String get madeWithLoveTitle => 'Dibahen dohot ❤️ oleh .';

  @override
  String get noMusicFilesFound => 'Dang Musik .';

  @override
  String get noArtistsFound => 'Ndang Artis .';

  @override
  String get noAlbumsFound => 'Ndang Album';

  @override
  String get unknownSong => 'Dang binoto Lagu .';

  @override
  String get unknownArtist => 'Ndang diboto halak Artis .';

  @override
  String get unknownAlbum => 'Ndang diboto Album .';

  @override
  String get unknownGenre => 'Ndang diboto Genre';

  @override
  String get buttonConfirmText => 'OKE';

  @override
  String get tileValueOn => 'Di';

  @override
  String get tileValueOff => 'Maradian';

  @override
  String get commonOfText => 'NA';

  @override
  String get pageNotFoundText => 'Ndang dapot halaman na dilehon .';

  @override
  String get commonErrorText => 'Hasalaan';

  @override
  String get retryButtonText => 'Urutan';

  @override
  String get filePickerDialogTitle =>
      'Pillit ma Direktori laho Scan tu Musik .';

  @override
  String get searchScreenTitle => 'Mangalului';

  @override
  String get searchEmptyText => 'Hasil Pencari .';

  @override
  String get searchResultsText => 'Hasil Pencarian:';

  @override
  String get resultsForText => 'Hasil ni:';

  @override
  String get disableBatteryOptimizationTitle => 'Nonaktifhon POTONG Baterai .';

  @override
  String get disableBatteryOptimizationContent =>
      'Molo adong optimasi baterai on di pengaturan perangkat asa boi diputar musik.';

  @override
  String get languageScreenTitle => 'Hata';

  @override
  String get themeSettingTitle => 'Tema';

  @override
  String get silverDeviceColor => 'Perak';

  @override
  String get blackDeviceColor => 'Birong';

  @override
  String get lightThemeTitle => 'Rondang';

  @override
  String get darkThemeTitle => 'Golap';

  @override
  String get orangeDeviceColor => 'Unte';

  @override
  String get yellowDeviceColor => 'Gorsing';

  @override
  String get goldDeviceColor => 'Sere';

  @override
  String get purpleDeviceColor => 'Pangko';

  @override
  String get pinkDeviceColor => 'Borna ping';

  @override
  String get brownDeviceColor => 'Bara';

  @override
  String get redDeviceColor => 'Rara';

  @override
  String get blueDeviceColor => 'Balau';

  @override
  String get limeDeviceColor => 'habang';

  @override
  String get greenDeviceColor => 'Rata';

  @override
  String get resetSettingsTitle => 'Atur Ulang Pengaturan .';

  @override
  String get browseArtist => 'Jelajahi Artist .';

  @override
  String get browseAlbum => 'Jelajahi Album .';

  @override
  String get cancelText => 'Manengsang';

  @override
  String get playlistsScreenTitle => 'Daftar marmeam .';

  @override
  String get addToOnTheGoPlaylist => 'Tambahon ma tu On-Gi .';

  @override
  String get addAlbumToOnTheGoPlaylist => 'Tambahon ma Album tu On-Gi .';

  @override
  String get removeSongFromThePlaylist => 'Hapus sian Daftar Pemain .';

  @override
  String get allAlbums => 'Sude Album .';

  @override
  String get scanningMusicFiles => 'Berkas Musik Menggra .';

  @override
  String get newPlaylist => 'Daftar Bermain baru .';

  @override
  String get savePlaylist => 'Simpan Daftar .';

  @override
  String get clearPlaylist => 'Daftar Bermain jelas .';

  @override
  String get rescanMusicFilesSettingTitle => 'Berkas Musik Reskan .';

  @override
  String get deviceControlMenuTutorialText =>
      'Pindahon ma jempolmu saotik di humaliang ni Roda klik laho mangatur menu .';

  @override
  String get centerButtonMenuTutorialText =>
      'Tekan ma tombol pusat laho mamillit item menu na disorot .';

  @override
  String get playPauseMenuTutorialText =>
      'Tekan tombol on laho mamutar manang pausehon ende .';

  @override
  String get nextButtonMenuTutorialText =>
      'Tekan ma tombol on asa boi skip tu ende na mangihut .';

  @override
  String get previousButtonMenuTutorialText =>
      'Tekan tombol on asa boi diputar manang mulak tu ende na salpu .';

  @override
  String get menuButtonTutorialText =>
      'Tekan ma tombol on asa boi mulak tu menu na salpu. Boi do dipencet jala dipegang hamu sian layar na asing asa boi langsung tu menu utama.';

  @override
  String get deviceScreenMenuTutorialText =>
      'On ma layar tampilan. Mode Layar dan Benda Sentuh danlah Distasi diaktifhon sian bawaan jala boi dibahen lam tu dengganna di pengaturan.';

  @override
  String get deviceControlNowPlayingTutorialText =>
      'Pindahon ma jempolmu tu humaliang ni Roda klik laho menyesuaihon volume .';

  @override
  String get centerButtonNowPlayingTutorialText =>
      'Tekan ma tombol Pusat asa boi marsepeda marhite mangalului bar, helasi dohot geser. Tekan jala tahan ma tombol Pusat asa boi masuk tu pilihan tambahan.';

  @override
  String get nextButtonNowPlayingTutorialText =>
      'Tekan jala tahan tombol on asa hatop maju lagu i .';

  @override
  String get previousButtonNowPlayingTutorialText =>
      'Tekan jala tahan ma tombol on asa boi diputar lagu i .';

  @override
  String get editSongOption => 'Lagu Edit .';

  @override
  String get editSongScreenTitle => 'Lagu Edit .';

  @override
  String get editSongNameLabel => 'Lagu Nama .';

  @override
  String get editSongArtistLabel => 'Goar Artist .';

  @override
  String get editSongAlbumLabel => 'Album Nama .';

  @override
  String get editSongGenreLabel => 'Rumang';

  @override
  String get editSongLyricsLabel => 'Lirik lagu batak .';

  @override
  String get saveChangesButton => 'Simpan Perubahan .';

  @override
  String get clickWheelInputTextBarTutorialText =>
      'Pindahon ma jempolmu saotik tu humaliang ni Roda klik laho menyoroti abjad .';

  @override
  String get centerButtonInputTextBarScreenTutorialText =>
      'Tekan ma tombol pusat laho mamillit abjad na disorot .';

  @override
  String get nextButtonInputTextBarTutorialText =>
      'Tekan tombol on laho manambai ruang .';

  @override
  String get previousButtonInputTextBarTutorialText =>
      'Tekan ma tombol on asa boi dihapus karakter na parpudi .';

  @override
  String get menuButtonInputTextBarTutorialText =>
      'Tekan tombol on laho manutup keyboard jala marsaor dohot hasil pencarian .';

  @override
  String get allSongs => 'Sude Song .';

  @override
  String get clickWheelSizeSettingTitle => 'Klik ma Ukuran Roda .';

  @override
  String get clickWheelSensitivitySettingTitle => 'Klik ma Kepekaan Roda .';

  @override
  String get small => 'Menek';

  @override
  String get medium => 'Manonga';

  @override
  String get large => 'Bolon';

  @override
  String get veryLow => 'Mansai toru';

  @override
  String get low => 'Rendah';

  @override
  String get high => 'Timbo';

  @override
  String get volumeModeSettingTitle => 'Mode Jilid .';

  @override
  String get appVolumeMode => 'AC';

  @override
  String get systemVolumeMode => 'Sistim';

  @override
  String get renamePlaylist => 'Goar ni Pamutar Ulang .';

  @override
  String get excludeDirectoriesScreenTitle => 'Ndang .';
}
