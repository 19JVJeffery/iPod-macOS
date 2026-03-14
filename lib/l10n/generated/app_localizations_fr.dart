// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get appTitle => 'ClassiPod';

  @override
  String get menuButtonText => 'MENU';

  @override
  String get audioAccessPermissionTitle =>
      'Autorisation d\'accès audio requise';

  @override
  String get audioAccessPermissionContent =>
      'Veuillez accorder l\'accès aux fichiers audio pour nous permettre de lire vos fichiers musicaux.';

  @override
  String get audioAccessPermissionPermanentlyDeniedTitle =>
      'Autorisation d\'accès audio refusée';

  @override
  String get audioAccessPermissionPermanentlyDeniedContent =>
      'Veuillez accorder l\'accès aux fichiers audio pour cette application dans les paramètres de l\'appareil pour nous permettre de lire vos fichiers musicaux.';

  @override
  String get menuScreenTitle => 'Menu';

  @override
  String get musicMenuScreenTitle => 'Musique';

  @override
  String get nowPlayingScreenTitle => 'En lecture';

  @override
  String get shuffleSongsMenuTitle => 'Mix de morceaux';

  @override
  String get shuffleSettingTitle => 'Aléatoire';

  @override
  String get settingsScreenTitle => 'Réglages';

  @override
  String get aboutScreenTitle => 'À propos';

  @override
  String get coverFlowScreenTitle => 'Cover Flow';

  @override
  String get artistsScreenTitle => 'Artistes';

  @override
  String get albumsScreenTitle => 'Albums';

  @override
  String get songsScreenTitle => 'Chansons';

  @override
  String nSongs(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countString chansons',
      one: '1 chanson',
      zero: 'pas de chansons',
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
      other: '$countString albums',
      one: '1 album',
      zero: 'pas d\'albums',
    );
    return '$_temp0';
  }

  @override
  String get genresScreenTitle => 'Genres';

  @override
  String get genreSongsScreenTitle => 'Genre de la chanson';

  @override
  String get deviceColorSettingTitle => 'Couleur de l\'appareil';

  @override
  String get touchScreenSettingTitle => 'Écran tactile activé';

  @override
  String get repeatModeSettingTitle => 'Répéter';

  @override
  String get repeatModeOne => 'Un';

  @override
  String get repeatModeAll => 'Tous';

  @override
  String get vibrateSettingTitle => 'Vibrer';

  @override
  String get clickWheelSettingTitle => 'Sons de la molette cliquable';

  @override
  String get splitScreenSettingTitle => 'Mode d\'écran divisé';

  @override
  String get touchSoundsDialogTitle => 'Sons tactiles';

  @override
  String get touchSoundsDialogContent =>
      'Veuillez activer les sons tactiles dans les paramètres système pour entendre les sons de la molette cliquable';

  @override
  String get immersiveModeSettingTitle => 'Mode immersif';

  @override
  String get showAppTutorialSettingTitle => 'Montrer le tutoriel';

  @override
  String get changeDirectorySettingTitle => 'Répertoire de paramètres';

  @override
  String get donateSettingTitle => 'Faire un don';

  @override
  String get donateSettingDescription =>
      'Si vous aimez cette application, veuillez envisager de faire un don.';

  @override
  String get versionAboutScreenTitle => 'Version';

  @override
  String get madeWithLoveTitle => 'Fait avec ❤️  par';

  @override
  String get noMusicFilesFound => 'Pas de musique';

  @override
  String get noArtistsFound => 'Pas d\'artistes';

  @override
  String get noAlbumsFound => 'Pas d\'albums';

  @override
  String get unknownSong => 'Chanson inconnue';

  @override
  String get unknownArtist => 'Artiste inconnu';

  @override
  String get unknownAlbum => 'Album inconnu';

  @override
  String get unknownGenre => 'Genre inconnu';

  @override
  String get buttonConfirmText => 'D\'accord';

  @override
  String get tileValueOn => 'Activé';

  @override
  String get tileValueOff => 'Désactivé';

  @override
  String get commonOfText => 'de';

  @override
  String get pageNotFoundText => 'La page donnée n\'a pas été trouvée';

  @override
  String get commonErrorText => 'Erreur';

  @override
  String get retryButtonText => 'Réessayer';

  @override
  String get filePickerDialogTitle =>
      'Sélectionnez un répertoire pour rechercher la musique';

  @override
  String get searchScreenTitle => 'Recherche';

  @override
  String get searchEmptyText => 'Pas de résultats de recherche';

  @override
  String get searchResultsText => 'Résultats de la recherche:';

  @override
  String get resultsForText => 'Résultats pour:';

  @override
  String get disableBatteryOptimizationTitle =>
      'Désactiver l\'optimisation de la batterie';

  @override
  String get disableBatteryOptimizationContent =>
      'Veuillez désactiver l\'optimisation de la batterie pour cette application dans les paramètres de l\'appareil pour permettre la lecture en arrière-plan de la musique.';

  @override
  String get languageScreenTitle => 'Langue';

  @override
  String get themeSettingTitle => 'Thème';

  @override
  String get silverDeviceColor => 'Argenté';

  @override
  String get blackDeviceColor => 'Noir';

  @override
  String get lightThemeTitle => 'Clair';

  @override
  String get darkThemeTitle => 'Sombre';

  @override
  String get orangeDeviceColor => 'Orange';

  @override
  String get yellowDeviceColor => 'Jaune';

  @override
  String get goldDeviceColor => 'Or';

  @override
  String get purpleDeviceColor => 'Violet';

  @override
  String get pinkDeviceColor => 'Rose';

  @override
  String get brownDeviceColor => 'Brun';

  @override
  String get redDeviceColor => 'Rouge';

  @override
  String get blueDeviceColor => 'Bleu';

  @override
  String get limeDeviceColor => 'Vert citron';

  @override
  String get greenDeviceColor => 'Vert';

  @override
  String get resetSettingsTitle => 'Réinitialiser les paramètres';

  @override
  String get browseArtist => 'Parcourir';

  @override
  String get browseAlbum => 'Parcourir les albums';

  @override
  String get cancelText => 'Annuler';

  @override
  String get playlistsScreenTitle => 'Listes de lecture';

  @override
  String get addToOnTheGoPlaylist => 'Ajouter à On-The-Go';

  @override
  String get addAlbumToOnTheGoPlaylist => 'Ajouter l\'album à On-The-Go';

  @override
  String get removeSongFromThePlaylist => 'Supprimer de la liste de lecture';

  @override
  String get allAlbums => 'Tous les albums';

  @override
  String get scanningMusicFiles => 'Analyse des fichiers musicaux';

  @override
  String get newPlaylist => 'Nouvelle liste de lecture';

  @override
  String get savePlaylist => 'Enregistrer la liste de lecture';

  @override
  String get clearPlaylist => 'Effacer la liste de lecture';

  @override
  String get rescanMusicFilesSettingTitle =>
      'Rescanner les fichiers de musique';

  @override
  String get deviceControlMenuTutorialText =>
      'Déplacez légèrement votre pouce autour de la molette cliquable pour naviguer dans le menu';

  @override
  String get centerButtonMenuTutorialText =>
      'Appuyez sur le bouton central pour sélectionner l\'élément de menu en surbrillance';

  @override
  String get playPauseMenuTutorialText =>
      'Appuyez sur ce bouton pour jouer ou suspendre une chanson';

  @override
  String get nextButtonMenuTutorialText =>
      'Appuyez sur ce bouton pour passer à la chanson suivante';

  @override
  String get previousButtonMenuTutorialText =>
      'Appuyez sur ce bouton pour rembobiner ou revenir à la chanson précédente';

  @override
  String get menuButtonTutorialText =>
      'Appuyez sur ce bouton pour revenir au menu précédent. Vous pouvez appuyer et le maintenir à partir de n\'importe quel autre écran pour accéder directement au menu principal.';

  @override
  String get deviceScreenMenuTutorialText =>
      'Ceci est l\'écran d\'affichage. L\'écran tactile et le mode d\'écran divisé sont activés par défaut et peuvent être configurés plus loin dans les paramètres.';

  @override
  String get deviceControlNowPlayingTutorialText =>
      'Déplacez votre pouce autour de la molette cliquable pour régler le volume';

  @override
  String get centerButtonNowPlayingTutorialText =>
      'Appuyez sur le bouton central pour alterner entre la barre de progression, le défileur et le curseur de lecture aléatoire. Appuyez et maintenez le bouton central pour accéder aux options supplémentaires.';

  @override
  String get nextButtonNowPlayingTutorialText =>
      'Appuyez et maintenez ce bouton pour faire avancer rapidement la chanson';

  @override
  String get previousButtonNowPlayingTutorialText =>
      'Appuyez et maintenez ce bouton pour rembobiner la chanson';

  @override
  String get editSongOption => 'Modifier la chanson';

  @override
  String get editSongScreenTitle => 'Modifier la chanson';

  @override
  String get editSongNameLabel => 'Nom de la chanson';

  @override
  String get editSongArtistLabel => 'Noms de l\'artiste';

  @override
  String get editSongAlbumLabel => 'Nom de l\'album';

  @override
  String get editSongGenreLabel => 'Genre';

  @override
  String get editSongLyricsLabel => 'Paroles';

  @override
  String get saveChangesButton => 'Enregistrer les modifications';

  @override
  String get clickWheelInputTextBarTutorialText =>
      'Déplacez votre pouce légèrement autour de la molette cliquable pour mettre en surbrillance une lettre';

  @override
  String get centerButtonInputTextBarScreenTutorialText =>
      'Appuyez sur le bouton central pour sélectionner la lettre en surbrillance';

  @override
  String get nextButtonInputTextBarTutorialText =>
      'Appuyez sur ce bouton pour ajouter un espace';

  @override
  String get previousButtonInputTextBarTutorialText =>
      'Appuyez sur ce bouton pour supprimer le dernier caractère';

  @override
  String get menuButtonInputTextBarTutorialText =>
      'Appuyez sur ce bouton pour fermer le clavier et interagir avec les résultats de recherche';

  @override
  String get allSongs => 'Toutes les chansons';

  @override
  String get clickWheelSizeSettingTitle => 'Taille de la molette cliquable';

  @override
  String get clickWheelSensitivitySettingTitle =>
      'Sensibilité de la molette cliquable';

  @override
  String get small => 'Petit';

  @override
  String get medium => 'Moyen';

  @override
  String get large => 'Grand';

  @override
  String get veryLow => 'Très faible';

  @override
  String get low => 'Faible';

  @override
  String get high => 'Haut';

  @override
  String get volumeModeSettingTitle => 'Mode du volume';

  @override
  String get appVolumeMode => 'Application';

  @override
  String get systemVolumeMode => 'Système';

  @override
  String get renamePlaylist => 'Renommer la liste de lecture';

  @override
  String get excludeDirectoriesScreenTitle => 'Exclure les répertoires';
}
