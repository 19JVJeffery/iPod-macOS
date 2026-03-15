import SwiftUI

struct ScreenView: View {
    @EnvironmentObject var vm: AppViewModel
    @EnvironmentObject var settings: SettingsService

    var body: some View {
        ZStack {
            Color(hex: "C5D0D8")

            screenContent
        }
        .font(.system(size: 13))
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
            let pl = vm.playlists[idx]
            let songs = pl.songIDs.compactMap { id in vm.songs.first { $0.id == id } }
            SongListView(
                title: pl.name,
                songs: songs,
                selectedIndex: vm.selectedIndex
            )
            .environmentObject(vm)
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
