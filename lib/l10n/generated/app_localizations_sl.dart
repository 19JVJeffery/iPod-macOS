// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Slovenian (`sl`).
class AppLocalizationsSl extends AppLocalizations {
  AppLocalizationsSl([String locale = 'sl']) : super(locale);

  @override
  String get appTitle => 'CLASSIPOD';

  @override
  String get menuButtonText => 'Meni';

  @override
  String get audioAccessPermissionTitle => 'Potrebno je dovoljenje za dostop';

  @override
  String get audioAccessPermissionContent =>
      'Prosimo, da dodelite dostop do zvočnih datotek, da nam omogočite predvajanje vaših glasbenih datotek.';

  @override
  String get audioAccessPermissionPermanentlyDeniedTitle =>
      'Dovoljenje za dostop do zvoka zavrnjeno';

  @override
  String get audioAccessPermissionPermanentlyDeniedContent =>
      'V nastavitvah naprave dodelite dostop do zvočnih datotek za to aplikacijo, da nam omogoča predvajanje vaših glasbenih datotek.';

  @override
  String get menuScreenTitle => 'Meni';

  @override
  String get musicMenuScreenTitle => 'Glasba';

  @override
  String get nowPlayingScreenTitle => 'Zdaj igranje';

  @override
  String get shuffleSongsMenuTitle => 'Premeščanje pesmi';

  @override
  String get shuffleSettingTitle => 'Shuffle';

  @override
  String get settingsScreenTitle => 'Nastavitve';

  @override
  String get aboutScreenTitle => 'Približno';

  @override
  String get coverFlowScreenTitle => 'Pretok pokrova';

  @override
  String get artistsScreenTitle => 'Umetniki';

  @override
  String get albumsScreenTitle => 'Albumi';

  @override
  String get songsScreenTitle => 'Pes';

  @override
  String nSongs(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countString Pesmi',
      one: '1 Pesem',
      zero: 'Brez pesmi',
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
      one: '1 album',
      zero: 'ni albumov',
    );
    return '$_temp0';
  }

  @override
  String get genresScreenTitle => 'Žanri';

  @override
  String get genreSongsScreenTitle => 'Žanrske pesmi';

  @override
  String get deviceColorSettingTitle => 'Barva naprave';

  @override
  String get touchScreenSettingTitle => 'Omogočeno zaslon na dotik';

  @override
  String get repeatModeSettingTitle => 'Ponovite';

  @override
  String get repeatModeOne => 'Ena';

  @override
  String get repeatModeAll => 'Vse';

  @override
  String get vibrateSettingTitle => 'Vibriraj';

  @override
  String get clickWheelSettingTitle => 'Kliknite zvoke kolesa';

  @override
  String get splitScreenSettingTitle => 'Razdelilni način zaslona';

  @override
  String get touchSoundsDialogTitle => 'Zvoki dotika';

  @override
  String get touchSoundsDialogContent =>
      'Prosimo, omogočite zvoke na dotik iz nastavitev sistema, da slišite zvoke za klik';

  @override
  String get immersiveModeSettingTitle => 'Potopni način';

  @override
  String get showAppTutorialSettingTitle => 'Prikaži vadnico';

  @override
  String get changeDirectorySettingTitle => 'Spremeni imenik';

  @override
  String get donateSettingTitle => 'Donirajte';

  @override
  String get donateSettingDescription =>
      'Če vam je všeč ta aplikacija, razmislite o donaciji.';

  @override
  String get versionAboutScreenTitle => 'Različica';

  @override
  String get madeWithLoveTitle => 'Narejen z ❤️';

  @override
  String get noMusicFilesFound => 'Brez glasbe';

  @override
  String get noArtistsFound => 'Brez umetnikov';

  @override
  String get noAlbumsFound => 'Brez albumov';

  @override
  String get unknownSong => 'Neznana pesem';

  @override
  String get unknownArtist => 'Neznani umetnik';

  @override
  String get unknownAlbum => 'Neznani album';

  @override
  String get unknownGenre => 'Neznani žanr';

  @override
  String get buttonConfirmText => 'Ok';

  @override
  String get tileValueOn => 'Naprej';

  @override
  String get tileValueOff => 'OFF';

  @override
  String get commonOfText => 'od';

  @override
  String get pageNotFoundText => 'Dane strani ni bilo mogoče najti';

  @override
  String get commonErrorText => 'Napaka';

  @override
  String get retryButtonText => 'Poskusiti';

  @override
  String get filePickerDialogTitle => 'Izberite imenik za skeniranje za glasbo';

  @override
  String get searchScreenTitle => 'Iskanje';

  @override
  String get searchEmptyText => 'Brez rezultatov iskanja';

  @override
  String get searchResultsText => 'Rezultati iskanja:';

  @override
  String get resultsForText => 'Rezultati za:';

  @override
  String get disableBatteryOptimizationTitle =>
      'Onemogoči optimizacijo baterije';

  @override
  String get disableBatteryOptimizationContent =>
      'Onemogočite optimizacijo baterije za to aplikacijo v nastavitvah naprave, da omogočite predvajanje glasbe v ozadju.';

  @override
  String get languageScreenTitle => 'Jezik';

  @override
  String get themeSettingTitle => 'Tema';

  @override
  String get silverDeviceColor => 'Srebro';

  @override
  String get blackDeviceColor => 'Črn';

  @override
  String get lightThemeTitle => 'Svetloba';

  @override
  String get darkThemeTitle => 'Temno';

  @override
  String get orangeDeviceColor => 'Oranžna';

  @override
  String get yellowDeviceColor => 'Rumena';

  @override
  String get goldDeviceColor => 'zlato';

  @override
  String get purpleDeviceColor => 'Vijolična';

  @override
  String get pinkDeviceColor => 'Roza';

  @override
  String get brownDeviceColor => 'Rjava';

  @override
  String get redDeviceColor => 'Rdeča';

  @override
  String get blueDeviceColor => 'Modra';

  @override
  String get limeDeviceColor => 'Apno';

  @override
  String get greenDeviceColor => 'zelena';

  @override
  String get resetSettingsTitle => 'Ponastavite nastavitve';

  @override
  String get browseArtist => 'Brskajte po umetniku';

  @override
  String get browseAlbum => 'Brskaj po albumu';

  @override
  String get cancelText => 'Odpovedati';

  @override
  String get playlistsScreenTitle => 'Seznami predvajanja';

  @override
  String get addToOnTheGoPlaylist => 'Dodajte na pot';

  @override
  String get addAlbumToOnTheGoPlaylist => 'Dodajte album na poti';

  @override
  String get removeSongFromThePlaylist => 'Odstranite s seznama predvajanja';

  @override
  String get allAlbums => 'Vsi albumi';

  @override
  String get scanningMusicFiles => 'Skeniranje glasbenih datotek';

  @override
  String get newPlaylist => 'Nov seznam predvajanja';

  @override
  String get savePlaylist => 'Shrani seznam predvajanja';

  @override
  String get clearPlaylist => 'Jasen seznam predvajanja';

  @override
  String get rescanMusicFilesSettingTitle => 'Rečilne glasbene datoteke';

  @override
  String get deviceControlMenuTutorialText =>
      'Palec rahlo premaknite okoli kolesa za klik, da krmarite po meniju';

  @override
  String get centerButtonMenuTutorialText =>
      'Pritisnite gumb Center, da izberete poudarjeno postavko menija';

  @override
  String get playPauseMenuTutorialText =>
      'Pritisnite ta gumb, da predvajate ali ustavite pesem';

  @override
  String get nextButtonMenuTutorialText =>
      'Pritisnite ta gumb, da preskočite na naslednjo skladbo';

  @override
  String get previousButtonMenuTutorialText =>
      'Pritisnite ta gumb, da se previjate ali se vrnete na prejšnjo skladbo';

  @override
  String get menuButtonTutorialText =>
      'Pritisnite ta gumb, da se vrnete v prejšnji meni. Lahko ga pritisnete in držite z katerega koli drugega zaslona, ​​da se neposredno odpravite v glavni meni.';

  @override
  String get deviceScreenMenuTutorialText =>
      'To je zaslon za prikaz. Zaslon na dotik in način razdelitve zaslona sta privzeto omogočena in ga je mogoče nadalje konfigurirati v nastavitvah.';

  @override
  String get deviceControlNowPlayingTutorialText =>
      'Premaknite palec okoli kolesa klika, da prilagodite glasnost';

  @override
  String get centerButtonNowPlayingTutorialText =>
      'Pritisnite Center Gumb, da kolesarite skozi Bar Seek, Scrubber Bar in Shiffle Slider. Pritisnite in pridržite gumb Center, da dostopate do dodatnih možnosti.';

  @override
  String get nextButtonNowPlayingTutorialText =>
      'Pritisnite in držite ta gumb, da hitro posredujete pesem';

  @override
  String get previousButtonNowPlayingTutorialText =>
      'Pritisnite in pridržite ta gumb, da previjate pesem';

  @override
  String get editSongOption => 'Uredi pesem';

  @override
  String get editSongScreenTitle => 'Uredi pesem';

  @override
  String get editSongNameLabel => 'Ime pesmi';

  @override
  String get editSongArtistLabel => 'Imena umetnikov';

  @override
  String get editSongAlbumLabel => 'Ime albuma';

  @override
  String get editSongGenreLabel => 'Žanr';

  @override
  String get editSongLyricsLabel => 'Besedila';

  @override
  String get saveChangesButton => 'Shrani spremembe';

  @override
  String get clickWheelInputTextBarTutorialText =>
      'Palec rahlo premaknite okoli kolesa za klik, da označite abecedo';

  @override
  String get centerButtonInputTextBarScreenTutorialText =>
      'Pritisnite gumb Center, da izberete označeno abecedo';

  @override
  String get nextButtonInputTextBarTutorialText =>
      'Pritisnite ta gumb, da dodate prostor';

  @override
  String get previousButtonInputTextBarTutorialText =>
      'Pritisnite ta gumb, da izbrišete zadnji znak';

  @override
  String get menuButtonInputTextBarTutorialText =>
      'Pritisnite ta gumb, da zaprete tipkovnico in interakcijo z rezultati iskanja';

  @override
  String get allSongs => 'Vse pesmi';

  @override
  String get clickWheelSizeSettingTitle => 'Kliknite velikost kolesa';

  @override
  String get clickWheelSensitivitySettingTitle =>
      'Kliknite občutljivost na kolesu';

  @override
  String get small => 'Majhno';

  @override
  String get medium => 'Srednje';

  @override
  String get large => 'Veliko';

  @override
  String get veryLow => 'Zelo nizko';

  @override
  String get low => 'Nizka';

  @override
  String get high => 'Visok';

  @override
  String get volumeModeSettingTitle => 'Način glasnosti';

  @override
  String get appVolumeMode => 'APP';

  @override
  String get systemVolumeMode => 'Sistem';

  @override
  String get renamePlaylist => 'Preimenuj seznam predvajanja';

  @override
  String get excludeDirectoriesScreenTitle => 'Izključite imenike';
}
