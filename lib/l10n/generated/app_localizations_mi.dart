// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Maori (`mi`).
class AppLocalizationsMi extends AppLocalizations {
  AppLocalizationsMi([String locale = 'mi']) : super(locale);

  @override
  String get appTitle => 'Karaehe';

  @override
  String get menuButtonText => 'Rārangi kai';

  @override
  String get audioAccessPermissionTitle => 'Whakaaetanga whakauru oro';

  @override
  String get audioAccessPermissionContent =>
      'Tena koa tohaina te uru o te oro ki te tuku i a maatau ki te takaro i o konae puoro.';

  @override
  String get audioAccessPermissionPermanentlyDeniedTitle =>
      'Whakaaetanga Whakauru Audio i whakakahoretia';

  @override
  String get audioAccessPermissionPermanentlyDeniedContent =>
      'Tena koa tukuna nga konae ororongo mo tenei taupānga i roto i nga tautuhinga taputapu kia taea ai e matou te takaro i o konae puoro.';

  @override
  String get menuScreenTitle => 'Rārangi kai';

  @override
  String get musicMenuScreenTitle => 'Rangi';

  @override
  String get nowPlayingScreenTitle => 'Inaianei e takaro ana';

  @override
  String get shuffleSongsMenuTitle => 'Waiata shuffle';

  @override
  String get shuffleSettingTitle => 'Horohuka';

  @override
  String get settingsScreenTitle => 'Tautuhinga';

  @override
  String get aboutScreenTitle => 'Mō';

  @override
  String get coverFlowScreenTitle => 'Te rerenga rerenga';

  @override
  String get artistsScreenTitle => 'Tohiti';

  @override
  String get albumsScreenTitle => 'Ārangi';

  @override
  String get songsScreenTitle => 'Nga waiata';

  @override
  String nSongs(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countString Waiata',
      one: '1 Waiata',
      zero: 'Kore Waiata',
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
      other: '$countString Pukaemi',
      one: '1 Pukaemi',
      zero: 'Kore Pukaemi',
    );
    return '$_temp0';
  }

  @override
  String get genresScreenTitle => 'Kohuru';

  @override
  String get genreSongsScreenTitle => 'Nga waiata Genre';

  @override
  String get deviceColorSettingTitle => 'Tae taputapu';

  @override
  String get touchScreenSettingTitle => 'Mata pa atu';

  @override
  String get repeatModeSettingTitle => 'Tukurua';

  @override
  String get repeatModeOne => 'Tahi';

  @override
  String get repeatModeAll => 'Katoa';

  @override
  String get vibrateSettingTitle => 'Tōiri';

  @override
  String get clickWheelSettingTitle => 'Pāwhiritia Haw Sounds';

  @override
  String get splitScreenSettingTitle => 'Aratau Mata';

  @override
  String get touchSoundsDialogTitle => 'Paoa pa';

  @override
  String get touchSoundsDialogContent =>
      'Tena koa whakahoutia nga oro pa mai i nga tautuhinga punaha kia rongo i nga oro o nga wira click';

  @override
  String get immersiveModeSettingTitle => 'Aratau rumaki';

  @override
  String get showAppTutorialSettingTitle => 'Whakaatuhia te akoranga';

  @override
  String get changeDirectorySettingTitle => 'Whaiaronga huri';

  @override
  String get donateSettingTitle => 'Hoatu koha';

  @override
  String get donateSettingDescription =>
      'Mena kei te pai koe ki tenei taupānga, whakaarohia mai he takoha.';

  @override
  String get versionAboutScreenTitle => 'Whakaaturanga';

  @override
  String get madeWithLoveTitle => 'Hanga me ❤️ na';

  @override
  String get noMusicFilesFound => 'Kaore he puoro';

  @override
  String get noArtistsFound => 'Kahore he kaitoi';

  @override
  String get noAlbumsFound => 'Kaore he pukapuka';

  @override
  String get unknownSong => 'Waiata kore';

  @override
  String get unknownArtist => 'Kaitoi Kore';

  @override
  String get unknownAlbum => 'Absum';

  @override
  String get unknownGenre => 'Koretake Kaore e mohiotia';

  @override
  String get buttonConfirmText => 'Ok';

  @override
  String get tileValueOn => 'Runga';

  @override
  String get tileValueOff => 'Meinga iho';

  @override
  String get commonOfText => 'o';

  @override
  String get pageNotFoundText => 'Kaore i kitea te whaarangi';

  @override
  String get commonErrorText => 'Hē';

  @override
  String get retryButtonText => 'Rehiry hoki';

  @override
  String get filePickerDialogTitle =>
      'Whiriwhiria te whaiaronga ki te matawai mo te puoro';

  @override
  String get searchScreenTitle => 'Rapu';

  @override
  String get searchEmptyText => 'Kaore he kitenga rapu';

  @override
  String get searchResultsText => 'Nga hua rapu:';

  @override
  String get resultsForText => 'Nga Hua mo:';

  @override
  String get disableBatteryOptimizationTitle =>
      'Monokia te arotautanga o te pākahiko';

  @override
  String get disableBatteryOptimizationContent =>
      'Tena koa whakakorea te arotautanga o te pākahiko mo tenei taupānga i roto i nga tautuhinga taputapu kia taea ai te purei papamuri i te puoro puoro.';

  @override
  String get languageScreenTitle => 'Reo';

  @override
  String get themeSettingTitle => 'Kaupapa';

  @override
  String get silverDeviceColor => 'Hiriwa';

  @override
  String get blackDeviceColor => 'Mangu';

  @override
  String get lightThemeTitle => 'Taimāmā';

  @override
  String get darkThemeTitle => 'Wheuri';

  @override
  String get orangeDeviceColor => 'Ārani';

  @override
  String get yellowDeviceColor => 'Pungapunga';

  @override
  String get goldDeviceColor => 'Koura';

  @override
  String get purpleDeviceColor => 'Waiporoporo';

  @override
  String get pinkDeviceColor => 'Māwhero';

  @override
  String get brownDeviceColor => 'Parāone';

  @override
  String get redDeviceColor => 'Whero';

  @override
  String get blueDeviceColor => 'Kikorangi';

  @override
  String get limeDeviceColor => 'Kokauke';

  @override
  String get greenDeviceColor => 'Kākāriki';

  @override
  String get resetSettingsTitle => 'Tautuhi Tautuhinga';

  @override
  String get browseArtist => 'Tirotiro Kaitoi';

  @override
  String get browseAlbum => 'Tirotiro pukaemi';

  @override
  String get cancelText => 'Whakakore';

  @override
  String get playlistsScreenTitle => 'Rārangikonga';

  @override
  String get addToOnTheGoPlaylist => 'Tāpirihia ki runga-te-haere';

  @override
  String get addAlbumToOnTheGoPlaylist =>
      'Tāpirihia te pukaemi ki runga-a-haere';

  @override
  String get removeSongFromThePlaylist => 'Tangohia mai i te kaitakaro';

  @override
  String get allAlbums => 'Albums katoa';

  @override
  String get scanningMusicFiles => 'Matawai Waiata Waiata';

  @override
  String get newPlaylist => 'Rārangi rārangi';

  @override
  String get savePlaylist => 'Tiaki Pūmanawa';

  @override
  String get clearPlaylist => 'Maamaa';

  @override
  String get rescanMusicFilesSettingTitle => 'Kōnae puoro Rescan';

  @override
  String get deviceControlMenuTutorialText =>
      'Nukuhia to koromatua huri noa i te wira click hei whakatere i te tahua';

  @override
  String get centerButtonMenuTutorialText =>
      'Pawhiria te paatene pokapū ki te whiriwhiri i te taonga tahua tohu';

  @override
  String get playPauseMenuTutorialText =>
      'Pawhiria te paatene nei ki te takaro, ki te whakangahau ranei i tetahi waiata';

  @override
  String get nextButtonMenuTutorialText =>
      'Pawhiria te paatene nei kia peke ki te waiata o muri';

  @override
  String get previousButtonMenuTutorialText =>
      'Pawhiria te paatene nei ki te whakahoki ano ka hoki atu ranei ki te waiata o mua';

  @override
  String get menuButtonTutorialText =>
      'Pawhiria te paatene nei kia hoki ki te tahua o mua. Ka taea e koe te pēhi me te pupuri i tetahi atu mata kia haere tika atu ki te tahua matua.';

  @override
  String get deviceScreenMenuTutorialText =>
      'Koinei te mata whakaatu. Ko te mata pa me te aratau Matapihi ka whakahohea ma te taunoa ka taea te whirihora ano i roto i nga tautuhinga.';

  @override
  String get deviceControlNowPlayingTutorialText =>
      'Nukuhia to koromatua huri noa i te wira click hei whakatika i te rōrahi';

  @override
  String get centerButtonNowPlayingTutorialText =>
      'Pawhiria te paatene pokapū ki te huringa ma te rapu pae, paataki scruffle me te raima shuffle. Press me te pupuri i te paatene pokapū kia uru atu ai etahi atu taapiri.';

  @override
  String get nextButtonNowPlayingTutorialText =>
      'Press me te pupuri i tenei paatene kia tere ai te waiata';

  @override
  String get previousButtonNowPlayingTutorialText =>
      'Press me te pupuri i tenei paatene ki te whakahoki ano i te waiata';

  @override
  String get editSongOption => 'Whakatika waiata';

  @override
  String get editSongScreenTitle => 'Whakatika waiata';

  @override
  String get editSongNameLabel => 'Ingoa waiata';

  @override
  String get editSongArtistLabel => 'Nga Ingoa Artist';

  @override
  String get editSongAlbumLabel => 'Ingoa Album';

  @override
  String get editSongGenreLabel => 'Momo';

  @override
  String get editSongLyricsLabel => 'Hlrics';

  @override
  String get saveChangesButton => 'Whakaorangia nga huringa';

  @override
  String get clickWheelInputTextBarTutorialText =>
      'Nukuhia to koromatua huri noa i te wira click hei whakanui i te taatai';

  @override
  String get centerButtonInputTextBarScreenTutorialText =>
      'Pawhiria te paatene pokapū ki te whiriwhiri i te reta nui';

  @override
  String get nextButtonInputTextBarTutorialText =>
      'Pawhiria te paatene ki te taapiri i tetahi waahi';

  @override
  String get previousButtonInputTextBarTutorialText =>
      'Pawhiria te paatene nei ki te muku i te ahuatanga whakamutunga';

  @override
  String get menuButtonInputTextBarTutorialText =>
      'Pawhiria te paatene nei kia kati te papapātuhi me te taunekeneke ki nga hua o te rapu';

  @override
  String get allSongs => 'Nga waiata katoa';

  @override
  String get clickWheelSizeSettingTitle => 'Patohia te rahi o te wira';

  @override
  String get clickWheelSensitivitySettingTitle => 'Pāwhiritia Raina Tira';

  @override
  String get small => 'Iti';

  @override
  String get medium => 'Kauwaka';

  @override
  String get large => 'Nui';

  @override
  String get veryLow => 'Tino iti';

  @override
  String get low => 'Pāpaku';

  @override
  String get high => 'Teitei';

  @override
  String get volumeModeSettingTitle => 'Aratau Rau';

  @override
  String get appVolumeMode => 'Taupānga';

  @override
  String get systemVolumeMode => 'Pūnaha';

  @override
  String get renamePlaylist => 'Whakaingoa ano te kaitakaro';

  @override
  String get excludeDirectoriesScreenTitle => 'Kaua e arai';
}
