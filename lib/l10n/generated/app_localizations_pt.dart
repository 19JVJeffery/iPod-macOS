// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppLocalizationsPt extends AppLocalizations {
  AppLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get appTitle => 'Classipod';

  @override
  String get menuButtonText => 'MENU';

  @override
  String get audioAccessPermissionTitle =>
      'Permissão de Acesso de Áudio Necessária';

  @override
  String get audioAccessPermissionContent =>
      'Por favor, conceda o acesso aos arquivos de áudio para nos permitir reproduzir seus arquivos de música.';

  @override
  String get audioAccessPermissionPermanentlyDeniedTitle =>
      'Permissão de Acesso de Áudio Negada';

  @override
  String get audioAccessPermissionPermanentlyDeniedContent =>
      'Por favor, conceda o acesso aos arquivos de áudio a este aplicativo nas configurações do dispositivo para nos permitir reproduzir seus arquivos de música.';

  @override
  String get menuScreenTitle => 'Menu Principal';

  @override
  String get musicMenuScreenTitle => 'Música';

  @override
  String get nowPlayingScreenTitle => 'Reproduzindo Agora';

  @override
  String get shuffleSongsMenuTitle => 'Músicas Aleatórias';

  @override
  String get shuffleSettingTitle => 'Aleatório';

  @override
  String get settingsScreenTitle => 'Configurações';

  @override
  String get aboutScreenTitle => 'Sobre';

  @override
  String get coverFlowScreenTitle => 'Cover Flow';

  @override
  String get artistsScreenTitle => 'Artistas';

  @override
  String get albumsScreenTitle => 'Álbuns';

  @override
  String get songsScreenTitle => 'Músicas';

  @override
  String nSongs(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countString Músicas',
      one: '1 Música',
      zero: 'Sem músicas',
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
      other: '$countString Álbuns',
      one: '1 Álbum',
      zero: 'Sem álbuns',
    );
    return '$_temp0';
  }

  @override
  String get genresScreenTitle => 'Gêneros';

  @override
  String get genreSongsScreenTitle => 'Gêneros de Músicas';

  @override
  String get deviceColorSettingTitle => 'Cor do Dispositivo';

  @override
  String get touchScreenSettingTitle => 'Ativar Tela de Toque';

  @override
  String get repeatModeSettingTitle => 'Repetir';

  @override
  String get repeatModeOne => 'uma Música';

  @override
  String get repeatModeAll => 'Tudo';

  @override
  String get vibrateSettingTitle => 'Vibração';

  @override
  String get clickWheelSettingTitle => 'Sons da Click Wheel';

  @override
  String get splitScreenSettingTitle => 'Tela Dividida';

  @override
  String get touchSoundsDialogTitle => 'Sons de Toque';

  @override
  String get touchSoundsDialogContent =>
      'Ative os Sons de Toque das Configurações do Sistema para ouvir os sons da Click Wheel';

  @override
  String get immersiveModeSettingTitle => 'Modo Imersivo';

  @override
  String get showAppTutorialSettingTitle => 'Mostrar Tutorial';

  @override
  String get changeDirectorySettingTitle => 'Configurar Diretório';

  @override
  String get donateSettingTitle => 'Doar';

  @override
  String get donateSettingDescription =>
      'Se você gosta deste aplicativo, considere doar.';

  @override
  String get versionAboutScreenTitle => 'Versão';

  @override
  String get madeWithLoveTitle => 'Feito com ❤️ por';

  @override
  String get noMusicFilesFound => 'Sem Músicas';

  @override
  String get noArtistsFound => 'Sem Artistas';

  @override
  String get noAlbumsFound => 'Sem Álbuns';

  @override
  String get unknownSong => 'Música Desconhecida';

  @override
  String get unknownArtist => 'Artista Desconhecido';

  @override
  String get unknownAlbum => 'Álbum Desconhecido';

  @override
  String get unknownGenre => 'Gênero Desconhecido';

  @override
  String get buttonConfirmText => 'Ok';

  @override
  String get tileValueOn => 'Ligado';

  @override
  String get tileValueOff => 'Desligado';

  @override
  String get commonOfText => 'de';

  @override
  String get pageNotFoundText => 'A página selecionada não foi encontrada';

  @override
  String get commonErrorText => 'Erro';

  @override
  String get retryButtonText => 'Tente Novamente';

  @override
  String get filePickerDialogTitle =>
      'Selecione um Diretório para Sincronizar Músicas';

  @override
  String get searchScreenTitle => 'Buscar';

  @override
  String get searchEmptyText => 'Sem Resultados de Busca';

  @override
  String get searchResultsText => 'Resultados de Busca:';

  @override
  String get resultsForText => 'Resultados para:';

  @override
  String get disableBatteryOptimizationTitle =>
      'Desative a otimização da bateria';

  @override
  String get disableBatteryOptimizationContent =>
      'Desative a otimização da bateria para este aplicativo nas configurações do dispositivo para permitir a reprodução de música em segundo plano.';

  @override
  String get languageScreenTitle => 'Idioma';

  @override
  String get themeSettingTitle => 'Tema';

  @override
  String get silverDeviceColor => 'Prata';

  @override
  String get blackDeviceColor => 'Preto';

  @override
  String get lightThemeTitle => 'Claro';

  @override
  String get darkThemeTitle => 'Escuro';

  @override
  String get orangeDeviceColor => 'Laranja';

  @override
  String get yellowDeviceColor => 'Amarelo';

  @override
  String get goldDeviceColor => 'Ouro';

  @override
  String get purpleDeviceColor => 'Lilás';

  @override
  String get pinkDeviceColor => 'Rosa';

  @override
  String get brownDeviceColor => 'Marrom';

  @override
  String get redDeviceColor => 'Vermelho';

  @override
  String get blueDeviceColor => 'Azul';

  @override
  String get limeDeviceColor => 'Lima';

  @override
  String get greenDeviceColor => 'Verde';

  @override
  String get resetSettingsTitle => 'Redefinir Configurações';

  @override
  String get browseArtist => 'Navegar em Artista';

  @override
  String get browseAlbum => 'Navegar em Álbum';

  @override
  String get cancelText => 'Cancelar';

  @override
  String get playlistsScreenTitle => 'Listas de Reprodução';

  @override
  String get addToOnTheGoPlaylist => 'Adicionar à lista On-The-Go';

  @override
  String get addAlbumToOnTheGoPlaylist => 'Adicionar Álbum à lista On-The-Go';

  @override
  String get removeSongFromThePlaylist => 'Remover da Lista de Reprodução';

  @override
  String get allAlbums => 'Todos os Álbuns';

  @override
  String get scanningMusicFiles => 'Sincronizando Arquivos de Música';

  @override
  String get newPlaylist => 'Nova Lista de Reprodução';

  @override
  String get savePlaylist => 'Salvar Lista de Reprodução';

  @override
  String get clearPlaylist => 'Esvaziar Lista de Reprodução';

  @override
  String get rescanMusicFilesSettingTitle => 'Sincronizar Arquivos de Música';

  @override
  String get deviceControlMenuTutorialText =>
      'Mova o polegar levemente em volta da Click Wheel para navegar no menu';

  @override
  String get centerButtonMenuTutorialText =>
      'Pressione o botão Central para selecionar o item de menu destacado';

  @override
  String get playPauseMenuTutorialText =>
      'Pressione este botão para tocar ou pausar uma música';

  @override
  String get nextButtonMenuTutorialText =>
      'Pressione este botão para pular para a próxima música';

  @override
  String get previousButtonMenuTutorialText =>
      'Pressione este botão para retroceder ou voltar para a música anterior';

  @override
  String get menuButtonTutorialText =>
      'Pressione este botão para voltar ao menu anterior. Você pode pressionar e segurá -lo em qualquer outra tela para retornar diretamente ao Menu Principal.';

  @override
  String get deviceScreenMenuTutorialText =>
      'Esta é a tela de exibição. O modo de Tela de Toque e o modo de Tela Dividida estão ativados por padrão e podem ser configurados mais tarde no Menu de Configurações.';

  @override
  String get deviceControlNowPlayingTutorialText =>
      'Mova o polegar em volta da Click Wheel para ajustar o volume';

  @override
  String get centerButtonNowPlayingTutorialText =>
      'Pressione o botão Central para alternar entre a barra de progresso, a scrubber bar e o controle de reprodução aleatória. Pressione e segure o botão Central para acessar opções adicionais.';

  @override
  String get nextButtonNowPlayingTutorialText =>
      'Pressione e segure este botão para avançar rapidamente a música';

  @override
  String get previousButtonNowPlayingTutorialText =>
      'Pressione e segure este botão para retroceder a música';

  @override
  String get editSongOption => 'Editar Música';

  @override
  String get editSongScreenTitle => 'Editar Música';

  @override
  String get editSongNameLabel => 'Nome da Música';

  @override
  String get editSongArtistLabel => 'Nomes do Artista';

  @override
  String get editSongAlbumLabel => 'Nome do Álbum';

  @override
  String get editSongGenreLabel => 'Gênero';

  @override
  String get editSongLyricsLabel => 'Letra da Música';

  @override
  String get saveChangesButton => 'Salvar alterações';

  @override
  String get clickWheelInputTextBarTutorialText =>
      'Mova o polegar levemente ao redor da Click Wheel para destacar um caractere';

  @override
  String get centerButtonInputTextBarScreenTutorialText =>
      'Pressione o botão Central para selecionar o caractere destacada';

  @override
  String get nextButtonInputTextBarTutorialText =>
      'Pressione este botão para adicionar um espaço';

  @override
  String get previousButtonInputTextBarTutorialText =>
      'Pressione este botão para excluir o último caractere';

  @override
  String get menuButtonInputTextBarTutorialText =>
      'Pressione este botão para fechar o teclado e interagir com os resultados da busca';

  @override
  String get allSongs => 'Todas as Músicas';

  @override
  String get clickWheelSizeSettingTitle => 'Tamanho da Click Wheel';

  @override
  String get clickWheelSensitivitySettingTitle =>
      'Sensibilidade da Clique Wheel';

  @override
  String get small => 'Pequeno';

  @override
  String get medium => 'Médio';

  @override
  String get large => 'Grande';

  @override
  String get veryLow => 'Muito Baixa';

  @override
  String get low => 'Baixa';

  @override
  String get high => 'Alta';

  @override
  String get volumeModeSettingTitle => 'Modo de Controle de Volume';

  @override
  String get appVolumeMode => 'App';

  @override
  String get systemVolumeMode => 'Sistema';

  @override
  String get renamePlaylist => 'Renomear a Lista de Reprodução';

  @override
  String get excludeDirectoriesScreenTitle => 'Excluir Diretórios';
}
