import SwiftUI

struct ScreenView: View {
    @EnvironmentObject var vm: AppViewModel
    @EnvironmentObject var settings: SettingsService
    @EnvironmentObject var audioPlayer: AudioPlayerService

    var body: some View {
        VStack(spacing: 0) {
            // Status bar only on non-splash screens
            if vm.currentScreen != .splash {
                StatusBarView(title: screenTitle)
                    .environmentObject(audioPlayer)
            }
            ZStack {
                Color(hex: "C5D0D8")
                screenContent
            }
        }
        .font(.system(size: 13))
    }

    private var screenTitle: String {
        switch vm.currentScreen {
        case .splash: return ""
        case .mainMenu: return "iPod"
        case .musicMenu: return "Music"
        case .songs: return "Songs"
        case .albums: return "Albums"
        case .albumSongs(let name, _): return name
        case .artists: return "Artists"
        case .artistAlbums(let artist): return artist
        case .genres: return "Genres"
        case .genreSongs(let genre): return genre
        case .playlists: return "Playlists"
        case .playlistSongs: return "Playlist"
        case .search: return "Search"
        case .nowPlaying: return "Now Playing"
        case .coverFlow: return "Cover Flow"
        case .settings: return "Settings"
        case .deviceColorSelection: return "Device Color"
        case .about: return "About"
        }
    }

    @ViewBuilder
    private var screenContent: some View {
        switch vm.currentScreen {
        case .splash:
            SplashView()
                .environmentObject(vm)
        case .mainMenu:
            MenuListView(
                title: "iPod",
                items: ["Music", "Now Playing", "Settings", "Shuffle Songs"],
                selectedIndex: vm.selectedIndex
            )
            .environmentObject(vm)
        case .musicMenu:
            MenuListView(
                title: "Music",
                items: ["Cover Flow", "Playlists", "Artists", "Albums", "Songs", "Genres", "Search"],
                selectedIndex: vm.selectedIndex
            )
            .environmentObject(vm)
        case .songs:
            SongListView(
                title: "Songs",
                songs: vm.songs,
                selectedIndex: vm.selectedIndex
            )
            .environmentObject(vm)
        case .albums:
            AlbumListView(
                albums: vm.albums,
                selectedIndex: vm.selectedIndex
            )
            .environmentObject(vm)
        case .albumSongs(let albumName, let artistName):
            let songs = vm.songs.filter { $0.album == albumName && ($0.albumArtist == artistName || $0.artist == artistName) }
            SongListView(
                title: albumName,
                songs: songs,
                selectedIndex: vm.selectedIndex
            )
            .environmentObject(vm)
        case .artists:
            MenuListView(
                title: "Artists",
                items: vm.artists,
                selectedIndex: vm.selectedIndex
            )
            .environmentObject(vm)
        case .artistAlbums(let artistName):
            let artistAlbums = vm.albums.filter { $0.artist == artistName || vm.songs.filter { $0.artist == artistName }.map { $0.album }.contains($0.name) }
            AlbumListView(
                albums: artistAlbums,
                selectedIndex: vm.selectedIndex
            )
            .environmentObject(vm)
        case .genres:
            MenuListView(
                title: "Genres",
                items: vm.genres,
                selectedIndex: vm.selectedIndex
            )
            .environmentObject(vm)
        case .genreSongs(let genreName):
            let songs = vm.songs.filter { $0.genre == genreName }
            SongListView(
                title: genreName,
                songs: songs,
                selectedIndex: vm.selectedIndex
            )
            .environmentObject(vm)
        case .playlists:
            MenuListView(
                title: "Playlists",
                items: vm.playlists.map { $0.name },
                selectedIndex: vm.selectedIndex
            )
            .environmentObject(vm)
        case .playlistSongs(let idx):
            let allPlaylists = vm.playlists
            if idx < allPlaylists.count {
                let pl = allPlaylists[idx]
                let songs = pl.songIDs.compactMap { id in vm.songs.first { $0.id == id } }
                SongListView(
                    title: pl.name,
                    songs: songs,
                    selectedIndex: vm.selectedIndex
                )
                .environmentObject(vm)
            } else {
                MenuListView(title: "Playlist", items: [], selectedIndex: 0)
                    .environmentObject(vm)
            }
        case .nowPlaying:
            NowPlayingView()
                .environmentObject(vm)
                .environmentObject(AudioPlayerService.shared)
        case .coverFlow:
            CoverFlowView()
                .environmentObject(vm)
        case .settings:
            SettingsView(selectedIndex: vm.selectedIndex)
                .environmentObject(vm)
                .environmentObject(settings)
                .environmentObject(MusicLibraryService.shared)
        case .deviceColorSelection:
            DeviceColorSelectionView(selectedIndex: vm.selectedIndex)
                .environmentObject(vm)
                .environmentObject(settings)
        case .about:
            AboutView()
                .environmentObject(vm)
        case .search:
            SearchView()
                .environmentObject(vm)
        }
    }
}
