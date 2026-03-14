// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Pampanga Kapampangan (`pam`).
class AppLocalizationsPam extends AppLocalizations {
  AppLocalizationsPam([String locale = 'pam']) : super(locale);

  @override
  String get appTitle => 'KlasiPod';

  @override
  String get menuButtonText => 'MEN';

  @override
  String get audioAccessPermissionTitle =>
      'Kailangan ning Pamanulu ning Audio .';

  @override
  String get audioAccessPermissionContent =>
      'Pakisabi mi pung mayap kareng file audio ing access la para pu paintulutan mi lang maglarin kareng kekayung musikang musika.';

  @override
  String get audioAccessPermissionPermanentlyDeniedTitle =>
      'Perma ning Pamananggap king Audio Mebura';

  @override
  String get audioAccessPermissionPermanentlyDeniedContent =>
      'Pakisabi mi pung mayap kareng file a audio ing apps para king aparatung ini kareng aparatu bang paintulutan mi lang maglarin kareng kekayung file ning musika.';

  @override
  String get menuScreenTitle => 'Menu';

  @override
  String get musicMenuScreenTitle => 'Musika';

  @override
  String get nowPlayingScreenTitle => 'Ngeni Pamaglaru .';

  @override
  String get shuffleSongsMenuTitle => 'Kalaso dalit .';

  @override
  String get shuffleSettingTitle => 'Kaguluan';

  @override
  String get settingsScreenTitle => 'Pamipalage';

  @override
  String get aboutScreenTitle => 'Tungkul';

  @override
  String get coverFlowScreenTitle => 'Takpan ning Agos';

  @override
  String get artistsScreenTitle => 'Artista';

  @override
  String get albumsScreenTitle => 'Albums';

  @override
  String get songsScreenTitle => 'Kanta';

  @override
  String nSongs(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countString kanta',
      one: '1 kanta',
      zero: 'alang kanta',
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
      zero: 'Ala nang album',
    );
    return '$_temp0';
  }

  @override
  String get genresScreenTitle => 'Enso';

  @override
  String get genreSongsScreenTitle => 'Kantang genre .';

  @override
  String get deviceColorSettingTitle => 'Kulay ning kasangkapan .';

  @override
  String get touchScreenSettingTitle => 'Ayug a Ebiro';

  @override
  String get repeatModeSettingTitle => 'Ulitan';

  @override
  String get repeatModeOne => 'Metung';

  @override
  String get repeatModeAll => 'Eganagana';

  @override
  String get vibrateSettingTitle => 'Mayayaw';

  @override
  String get clickWheelSettingTitle => 'Pindutan me ing tunung Gulong .';

  @override
  String get splitScreenSettingTitle => 'Mode ning Screen a Screen .';

  @override
  String get touchSoundsDialogTitle => 'Tambing ing tunog .';

  @override
  String get touchSoundsDialogContent =>
      'Pakisabi mi pung mayap na gawan yu la reng sounting Settings para damdaman la reng tunog ning click .';

  @override
  String get immersiveModeSettingTitle => 'Mode a Immode .';

  @override
  String get showAppTutorialSettingTitle => 'Palabas ing Pamaglabas';

  @override
  String get changeDirectorySettingTitle => 'Pamagbayu king Direksyunya';

  @override
  String get donateSettingTitle => 'Biye';

  @override
  String get donateSettingDescription =>
      'Nung buri ye pu ining app ayni, pakiisipan ye pu ing pamagdonate.';

  @override
  String get versionAboutScreenTitle => 'Bersyun';

  @override
  String get madeWithLoveTitle => 'Gawang ❤️ by .';

  @override
  String get noMusicFilesFound => 'Alang Musika';

  @override
  String get noArtistsFound => 'Alang Artista';

  @override
  String get noAlbumsFound => 'Alang Album';

  @override
  String get unknownSong => 'Kantang e balu .';

  @override
  String get unknownArtist => 'E kilala nang Arrtista';

  @override
  String get unknownAlbum => 'E kilala Album';

  @override
  String get unknownGenre => 'E kilalang Genera .';

  @override
  String get buttonConfirmText => 'WA';

  @override
  String get tileValueOn => 'Keng';

  @override
  String get tileValueOff => 'Patdan';

  @override
  String get commonOfText => 'ning';

  @override
  String get pageNotFoundText => 'E ya meyakit ing bulung .';

  @override
  String get commonErrorText => 'Kasalaan';

  @override
  String get retryButtonText => 'Retry';

  @override
  String get filePickerDialogTitle =>
      'Mamili kang Directory king Scan para king Musika .';

  @override
  String get searchScreenTitle => 'Patntunan';

  @override
  String get searchEmptyText => 'Ala nang resulta king Pamanintun .';

  @override
  String get searchResultsText => 'Pamanyaliksik a resulta:';

  @override
  String get resultsForText => 'Resulta para kareng:';

  @override
  String get disableBatteryOptimizationTitle =>
      'Pamanalkus ning Baterya ning Baterya .';

  @override
  String get disableBatteryOptimizationContent =>
      'Pakisabi mi pung mayap na ing pamag-opok king baterya para king app a ini king lugal a ini para paintulutan ing pamaglaru king likuran ning musika.';

  @override
  String get languageScreenTitle => 'Lenggwahi';

  @override
  String get themeSettingTitle => 'Asilum';

  @override
  String get silverDeviceColor => 'Pilak';

  @override
  String get blackDeviceColor => 'Matuling';

  @override
  String get lightThemeTitle => 'Sulu';

  @override
  String get darkThemeTitle => 'Madalumdum';

  @override
  String get orangeDeviceColor => 'Magingkuliawan';

  @override
  String get yellowDeviceColor => 'Dilo';

  @override
  String get goldDeviceColor => 'Gintu';

  @override
  String get purpleDeviceColor => 'Lila';

  @override
  String get pinkDeviceColor => 'Rosas';

  @override
  String get brownDeviceColor => 'Kayumanggi';

  @override
  String get redDeviceColor => 'Malutu';

  @override
  String get blueDeviceColor => 'Asul';

  @override
  String get limeDeviceColor => 'Alim';

  @override
  String get greenDeviceColor => 'Berde';

  @override
  String get resetSettingsTitle => 'Reset setting';

  @override
  String get browseArtist => 'Browse Artista';

  @override
  String get browseAlbum => 'Brodse Album';

  @override
  String get cancelText => 'ala';

  @override
  String get playlistsScreenTitle => 'Playlists';

  @override
  String get addToOnTheGoPlaylist => 'Dagdagan ing O-Inggo .';

  @override
  String get addAlbumToOnTheGoPlaylist =>
      'Dagdagan ya ing Album king On-Ing-Inggo .';

  @override
  String get removeSongFromThePlaylist => 'Ilako ya king Playlista .';

  @override
  String get allAlbums => 'Sablang Album';

  @override
  String get scanningMusicFiles => 'Malayang Music Files';

  @override
  String get newPlaylist => 'Bayung Playlist';

  @override
  String get savePlaylist => 'Iligtas ya ing Playlist';

  @override
  String get clearPlaylist => 'Malinis a Playlist';

  @override
  String get rescanMusicFilesSettingTitle => 'Rescatikung Files ning Musika';

  @override
  String get deviceControlMenuTutorialText =>
      'Ilipat meng bagya ing thumb mu king paligid ning Click Gulong bang maglayag king menu .';

  @override
  String get centerButtonMenuTutorialText =>
      'Pindutan me ing sentrung buton ba yang mamili king pepakit nang bageng menu .';

  @override
  String get playPauseMenuTutorialText =>
      'Pindutan me ining buton para maglarin o mag-pause king metung a kanta .';

  @override
  String get nextButtonMenuTutorialText =>
      'Pindutan me ining buton para lumwal ka king tutuking kanta .';

  @override
  String get previousButtonMenuTutorialText =>
      'Pindutan me ining buton para pasibayu o mibalik king minunang kanta .';

  @override
  String get menuButtonTutorialText =>
      'Pindutan me ini para mibalik ka king minunang menu. Malyari meng i-press at atagkil iti king nanu mang aliwang screen bang diretsu yang munta king pun menu.';

  @override
  String get deviceScreenMenuTutorialText =>
      'Iti ing screen ning palabas. Tarahan a Screen at Screen Mode a mipapalyari kapamilatan ning pamaglapastangan at malyari yang i-configure lalu na king lugal.';

  @override
  String get deviceControlNowPlayingTutorialText =>
      'Ilipat me ing thumb mu king paligid ning Click Gulong para a-adjust ing dagul .';

  @override
  String get centerButtonNowPlayingTutorialText =>
      'Pindutan me ing button ning Sentru bang magbisikleta kapamilatan ning pamanintun bar, scrubble bar at sliffer slice. Pindutan me at pitalan ing buton ning Sentru bang makalub lang karagdagang opsyun.';

  @override
  String get nextButtonNowPlayingTutorialText =>
      'Pindutan me ini para mag-ayunu ya ing kanta .';

  @override
  String get previousButtonNowPlayingTutorialText =>
      'Pindutan me ini at tanggapan me ini para ibayu me ing kanta .';

  @override
  String get editSongOption => 'I-edit Song .';

  @override
  String get editSongScreenTitle => 'I-edit Song .';

  @override
  String get editSongNameLabel => 'Lagyu ning kanta';

  @override
  String get editSongArtistLabel => 'Lagyu ning Artista .';

  @override
  String get editSongAlbumLabel => 'Lagyu ning Album .';

  @override
  String get editSongGenreLabel => 'Klaseng atyu';

  @override
  String get editSongLyricsLabel => 'Lirik';

  @override
  String get saveChangesButton => 'Magtipid king Pamanyubli';

  @override
  String get clickWheelInputTextBarTutorialText =>
      'Ilipat meng bagya ing thumb mu king paligid ning Click Gulong bang ipakilala me ing metung a alpabetu .';

  @override
  String get centerButtonInputTextBarScreenTutorialText =>
      'Pindutan me ing sentru ning buton bang mamili king mipakilalang alpabetu .';

  @override
  String get nextButtonInputTextBarTutorialText =>
      'Pindutan me ining buton para dagdagan me ing espasyu .';

  @override
  String get previousButtonInputTextBarTutorialText =>
      'Pindutan me ini para buraran ing tauling tauan .';

  @override
  String get menuButtonInputTextBarTutorialText =>
      'Pindutan me ining buton para isara me ing keyboard at makipag-ugnayan kareng resulta ning pamanintun .';

  @override
  String get allSongs => 'Sablang Dalit .';

  @override
  String get clickWheelSizeSettingTitle => 'Pindutan me ing Sukat ning Gulong';

  @override
  String get clickWheelSensitivitySettingTitle =>
      'Pindutan me ing Sensitibidad ning Gulong';

  @override
  String get small => 'Malati';

  @override
  String get medium => 'Ayal';

  @override
  String get large => 'Maragul';

  @override
  String get veryLow => 'Sobrang Mababa';

  @override
  String get low => 'Lalam';

  @override
  String get high => 'Matas';

  @override
  String get volumeModeSettingTitle => 'Mode ning Bunggu .';

  @override
  String get appVolumeMode => 'App';

  @override
  String get systemVolumeMode => 'Sistema';

  @override
  String get renamePlaylist => 'Playlistang lagyu';

  @override
  String get excludeDirectoriesScreenTitle => 'Kapupusan ning Direktory .';
}
