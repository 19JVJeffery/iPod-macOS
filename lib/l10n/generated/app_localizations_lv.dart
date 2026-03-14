// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Latvian (`lv`).
class AppLocalizationsLv extends AppLocalizations {
  AppLocalizationsLv([String locale = 'lv']) : super(locale);

  @override
  String get appTitle => 'Klase';

  @override
  String get menuButtonText => 'Ēdienkarte';

  @override
  String get audioAccessPermissionTitle =>
      'Nepieciešama audio piekļuves atļauja';

  @override
  String get audioAccessPermissionContent =>
      'Lūdzu, piešķiriet audio failiem piekļuvi, lai ļautu mums atskaņot jūsu mūzikas failus.';

  @override
  String get audioAccessPermissionPermanentlyDeniedTitle =>
      'Audio piekļuves atļauja noliegta';

  @override
  String get audioAccessPermissionPermanentlyDeniedContent =>
      'Lūdzu, piešķiriet Audio Files piekļuvi šai lietotnei ierīces iestatījumos, lai ļautu mums atskaņot jūsu mūzikas failus.';

  @override
  String get menuScreenTitle => 'Ēdienkarte';

  @override
  String get musicMenuScreenTitle => 'Mūzika';

  @override
  String get nowPlayingScreenTitle => 'Tagad spēlēšana';

  @override
  String get shuffleSongsMenuTitle => 'Shuffle dziesmas';

  @override
  String get shuffleSettingTitle => 'Šūpot';

  @override
  String get settingsScreenTitle => 'Iestatījumi';

  @override
  String get aboutScreenTitle => 'Pret';

  @override
  String get coverFlowScreenTitle => 'Pārklāšanas plūsma';

  @override
  String get artistsScreenTitle => 'Mākslinieki';

  @override
  String get albumsScreenTitle => 'Albumi';

  @override
  String get songsScreenTitle => 'Dziesmas';

  @override
  String nSongs(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countString dziesmas',
      one: '1 dziesma',
      zero: 'nav dziesmu',
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
      other: '$countString albumi',
      one: '1 albums',
      zero: 'nav albumu',
    );
    return '$_temp0';
  }

  @override
  String get genresScreenTitle => 'Žanri';

  @override
  String get genreSongsScreenTitle => 'Žanra dziesmas';

  @override
  String get deviceColorSettingTitle => 'Ierīces krāsa';

  @override
  String get touchScreenSettingTitle => 'Iespējots skārienekrāns';

  @override
  String get repeatModeSettingTitle => 'Atkārtot';

  @override
  String get repeatModeOne => 'Viens';

  @override
  String get repeatModeAll => 'Viss';

  @override
  String get vibrateSettingTitle => 'Vibrēt';

  @override
  String get clickWheelSettingTitle => 'Noklikšķiniet uz riteņu skaņas';

  @override
  String get splitScreenSettingTitle => 'Sadalīta ekrāna režīms';

  @override
  String get touchSoundsDialogTitle => 'Pieskāriena skaņas';

  @override
  String get touchSoundsDialogContent =>
      'Lūdzu, iespējojiet pieskāriena skaņas no sistēmas iestatījumiem, lai dzirdētu klikšķa riteņa skaņas';

  @override
  String get immersiveModeSettingTitle => 'Ieskaujošs režīms';

  @override
  String get showAppTutorialSettingTitle => 'Izrādes apmācība';

  @override
  String get changeDirectorySettingTitle => 'Mainīt direktoriju';

  @override
  String get donateSettingTitle => 'Ziedot';

  @override
  String get donateSettingDescription =>
      'Ja jums patīk šī lietotne, lūdzu, apsveriet iespēju ziedot.';

  @override
  String get versionAboutScreenTitle => 'Versija';

  @override
  String get madeWithLoveTitle => 'Izgatavots ar ❤️ by';

  @override
  String get noMusicFilesFound => 'Nav mūzikas';

  @override
  String get noArtistsFound => 'Nav mākslinieku';

  @override
  String get noAlbumsFound => 'Nav albumu';

  @override
  String get unknownSong => 'Nezināma dziesma';

  @override
  String get unknownArtist => 'Nezināms mākslinieks';

  @override
  String get unknownAlbum => 'Nezināms albums';

  @override
  String get unknownGenre => 'Nezināms žanrs';

  @override
  String get buttonConfirmText => 'Labi';

  @override
  String get tileValueOn => 'Uz';

  @override
  String get tileValueOff => 'Ārpus';

  @override
  String get commonOfText => 'no';

  @override
  String get pageNotFoundText => 'Dotā lapa netika atrasta';

  @override
  String get commonErrorText => 'Kļūda';

  @override
  String get retryButtonText => 'Atkārtot';

  @override
  String get filePickerDialogTitle =>
      'Atlasiet direktoriju, lai skenētu mūziku';

  @override
  String get searchScreenTitle => 'Meklēšana';

  @override
  String get searchEmptyText => 'Nav meklēšanas rezultātu';

  @override
  String get searchResultsText => 'Meklēšanas rezultāti:';

  @override
  String get resultsForText => 'Rezultāti:';

  @override
  String get disableBatteryOptimizationTitle =>
      'Atspējot akumulatora optimizāciju';

  @override
  String get disableBatteryOptimizationContent =>
      'Lūdzu, atspējojiet šīs lietotnes akumulatora optimizāciju ierīces iestatījumos, lai varētu atskaņot mūziku.';

  @override
  String get languageScreenTitle => 'Valoda';

  @override
  String get themeSettingTitle => 'Tēma';

  @override
  String get silverDeviceColor => 'Sudrabs';

  @override
  String get blackDeviceColor => 'Melns';

  @override
  String get lightThemeTitle => 'Gaisma';

  @override
  String get darkThemeTitle => 'Tumšs';

  @override
  String get orangeDeviceColor => 'Oranžs';

  @override
  String get yellowDeviceColor => 'Dzeltens';

  @override
  String get goldDeviceColor => 'Zelts';

  @override
  String get purpleDeviceColor => 'Violeta';

  @override
  String get pinkDeviceColor => 'Rozā';

  @override
  String get brownDeviceColor => 'Brūns';

  @override
  String get redDeviceColor => 'Sarkans';

  @override
  String get blueDeviceColor => 'Zils';

  @override
  String get limeDeviceColor => 'Laima';

  @override
  String get greenDeviceColor => 'Zaļš';

  @override
  String get resetSettingsTitle => 'Atiestatīt iestatījumus';

  @override
  String get browseArtist => 'Pārlūkot mākslinieku';

  @override
  String get browseAlbum => 'Pārlūkot albumu';

  @override
  String get cancelText => 'Atcelt';

  @override
  String get playlistsScreenTitle => 'Atskaņošanas saraksti';

  @override
  String get addToOnTheGoPlaylist => 'Pievienot ceļā';

  @override
  String get addAlbumToOnTheGoPlaylist => 'Pievienojiet albumu ceļā';

  @override
  String get removeSongFromThePlaylist => 'Noņemiet no atskaņošanas saraksta';

  @override
  String get allAlbums => 'Visi albumi';

  @override
  String get scanningMusicFiles => 'Mūzikas failu skenēšana';

  @override
  String get newPlaylist => 'Jauns atskaņošanas saraksts';

  @override
  String get savePlaylist => 'Saglabājiet atskaņošanas sarakstu';

  @override
  String get clearPlaylist => 'Skaidrs atskaņošanas saraksts';

  @override
  String get rescanMusicFilesSettingTitle => 'Rescan mūzikas faili';

  @override
  String get deviceControlMenuTutorialText =>
      'Viegli pārvietojiet īkšķi ap ​​klikšķa riteni, lai pārvietotos izvēlnē';

  @override
  String get centerButtonMenuTutorialText =>
      'Nospiediet pogu Centrs, lai atlasītu iezīmēto izvēlnes vienumu';

  @override
  String get playPauseMenuTutorialText =>
      'Nospiediet šo pogu, lai atskaņotu vai pārtrauktu dziesmu';

  @override
  String get nextButtonMenuTutorialText =>
      'Nospiediet šo pogu, lai pārietu uz nākamo dziesmu';

  @override
  String get previousButtonMenuTutorialText =>
      'Nospiediet šo pogu, lai pārtaisītu vai atgrieztos pie iepriekšējās dziesmas';

  @override
  String get menuButtonTutorialText =>
      'Nospiediet šo pogu, lai atgrieztos iepriekšējā izvēlnē. Jūs varētu nospiest un turēt to no jebkura cita ekrāna, lai tieši pārietu uz galveno izvēlni.';

  @override
  String get deviceScreenMenuTutorialText =>
      'Šis ir displeja ekrāns. Skārienekrāns un sadalīts ekrāna režīms ir iespējots pēc noklusējuma, un to var konfigurēt vēl vairāk.';

  @override
  String get deviceControlNowPlayingTutorialText =>
      'Pārvietojiet īkšķi ap ​​klikšķa riteni, lai pielāgotu skaļumu';

  @override
  String get centerButtonNowPlayingTutorialText =>
      'Nospiediet centra pogu, lai pārvietotos caur meklēšanas joslu, skruberu joslu un shuffle slīdni. Nospiediet un turiet centra pogu, lai piekļūtu papildu opcijām.';

  @override
  String get nextButtonNowPlayingTutorialText =>
      'Nospiediet un turiet šo pogu, lai ātri pārsūtītu dziesmu';

  @override
  String get previousButtonNowPlayingTutorialText =>
      'Nospiediet un turiet šo pogu, lai pārtaisītu dziesmu';

  @override
  String get editSongOption => 'Rediģēt dziesmu';

  @override
  String get editSongScreenTitle => 'Rediģēt dziesmu';

  @override
  String get editSongNameLabel => 'Dziesmas nosaukums';

  @override
  String get editSongArtistLabel => 'Mākslinieku vārdi';

  @override
  String get editSongAlbumLabel => 'Albuma nosaukums';

  @override
  String get editSongGenreLabel => 'Žanrs';

  @override
  String get editSongLyricsLabel => 'Dziesmu vārdi';

  @override
  String get saveChangesButton => 'Saglabāt izmaiņas';

  @override
  String get clickWheelInputTextBarTutorialText =>
      'Viegli pārvietojiet īkšķi ap ​​klikšķa riteni, lai izceltu alfabētu';

  @override
  String get centerButtonInputTextBarScreenTutorialText =>
      'Nospiediet pogu Centrs, lai izvēlētos iezīmēto alfabētu';

  @override
  String get nextButtonInputTextBarTutorialText =>
      'Nospiediet šo pogu, lai pievienotu vietu';

  @override
  String get previousButtonInputTextBarTutorialText =>
      'Nospiediet šo pogu, lai izdzēstu pēdējo rakstzīmi';

  @override
  String get menuButtonInputTextBarTutorialText =>
      'Nospiediet šo pogu, lai aizvērtu tastatūru un mijiedarbotos ar meklēšanas rezultātiem';

  @override
  String get allSongs => 'Visas dziesmas';

  @override
  String get clickWheelSizeSettingTitle => 'Noklikšķiniet uz riteņa izmēra';

  @override
  String get clickWheelSensitivitySettingTitle =>
      'Noklikšķiniet uz riteņu jutības';

  @override
  String get small => 'Mazs';

  @override
  String get medium => 'Vidējs';

  @override
  String get large => 'Liels';

  @override
  String get veryLow => 'Ļoti zems';

  @override
  String get low => 'Zems';

  @override
  String get high => 'Augsts';

  @override
  String get volumeModeSettingTitle => 'Skaļuma režīms';

  @override
  String get appVolumeMode => 'Lietotne';

  @override
  String get systemVolumeMode => 'Sistēma';

  @override
  String get renamePlaylist => 'Pārdēvēt atskaņošanas sarakstu';

  @override
  String get excludeDirectoriesScreenTitle => 'Izslēgt direktorijus';
}
