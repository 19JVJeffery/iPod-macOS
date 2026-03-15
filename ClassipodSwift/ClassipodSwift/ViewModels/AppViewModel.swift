import Foundation
import SwiftUI
import Combine

enum Screen: Equatable {
    case splash
    case mainMenu
    case musicMenu
    case songs
    case albums
    case albumSongs(albumName: String, artistName: String)
    case artists
    case artistAlbums(artistName: String)
    case genres
    case genreSongs(genreName: String)
    case playlists
    case playlistSongs(playlistIndex: Int)
    case search
    case nowPlaying
    case coverFlow
    case settings
    case deviceColorSelection
    case about
}

class AppViewModel: ObservableObject {
    static let shared = AppViewModel()
    
    @Published var screenStack: [Screen] = [.splash]
    @Published var selectedIndex: Int = 0
    @Published var isLoading: Bool = false
    
    var currentScreen: Screen { screenStack.last ?? .mainMenu }
    
    let musicLibrary = MusicLibraryService.shared
    let audioPlayer = AudioPlayerService.shared
    let settingsService = SettingsService.shared
    
    private var cancellables = Set<AnyCancellable>()
    
    var songs: [Song] { musicLibrary.songs }
    
    var albums: [AlbumModel] {
        let grouped = Dictionary(grouping: songs) { "\($0.album)|\($0.albumArtist)" }
        return grouped.map { key, songs in
            let parts = key.split(separator: "|")
            return AlbumModel(
                name: String(parts.first ?? "Unknown"),
                artist: String(parts.last ?? "Unknown"),
                songs: songs.sorted { $0.trackNumber < $1.trackNumber }
            )
        }.sorted { $0.name < $1.name }
    }
    
    var artists: [String] {
        Array(Set(songs.map { $0.artist })).sorted()
    }
    
    var genres: [String] {
        Array(Set(songs.compactMap { $0.genre.isEmpty ? nil : $0.genre })).sorted()
    }
    
    var playlists: [PlaylistModel] {
        loadPlaylists()
    }
    
    private static let splashDuration: TimeInterval = 2.5

    init() {
        // Transition from splash to main menu after splash duration
        DispatchQueue.main.asyncAfter(deadline: .now() + Self.splashDuration) { [weak self] in
            self?.screenStack = [.mainMenu]
            self?.selectedIndex = 0
            // Load saved music directories
            MusicLibraryService.shared.loadSavedDirectories()
        }
    }
    
    // MARK: - Navigation
    
    func push(_ screen: Screen) {
        selectedIndex = 0
        screenStack.append(screen)
    }
    
    func pop() {
        if screenStack.count > 1 {
            screenStack.removeLast()
            selectedIndex = 0
        }
    }
    
    func popToRoot() {
        screenStack = [.mainMenu]
        selectedIndex = 0
    }
    
    // MARK: - Click wheel actions
    
    func scrollDown() {
        let count = itemCount(for: currentScreen)
        if count > 0 {
            selectedIndex = min(selectedIndex + 1, count - 1)
        }
        playClickSound()
    }
    
    func scrollUp() {
        selectedIndex = max(selectedIndex - 1, 0)
        playClickSound()
    }
    
    func selectCurrent() {
        playClickSound()
        handleSelect(at: selectedIndex)
    }
    
    func menuButtonPressed() {
        pop()
    }
    
    func menuButtonLongPressed() {
        popToRoot()
    }
    
    private func handleSelect(at index: Int) {
        switch currentScreen {
        case .mainMenu:
            switch index {
            case 0: push(.musicMenu)
            case 1: push(.nowPlaying)
            case 2: push(.settings)
            case 3:
                // Shuffle all
                if !songs.isEmpty {
                    audioPlayer.isShuffleEnabled = true
                    audioPlayer.loadPlaylist(songs, startIndex: 0)
                    push(.nowPlaying)
                }
            default: break
            }
        case .musicMenu:
            switch index {
            case 0: push(.coverFlow)
            case 1: push(.playlists)
            case 2: push(.artists)
            case 3: push(.albums)
            case 4: push(.songs)
            case 5: push(.genres)
            case 6: push(.search)
            default: break
            }
        case .songs:
            if index < songs.count {
                audioPlayer.loadPlaylist(songs, startIndex: index)
                push(.nowPlaying)
            }
        case .albums:
            if index < albums.count {
                let album = albums[index]
                push(.albumSongs(albumName: album.name, artistName: album.artist))
            }
        case .albumSongs(let albumName, let artistName):
            let albumSongs = songs.filter { $0.album == albumName && ($0.albumArtist == artistName || $0.artist == artistName) }
            if index < albumSongs.count {
                audioPlayer.loadPlaylist(albumSongs, startIndex: index)
                push(.nowPlaying)
            }
        case .artists:
            if index < artists.count {
                push(.artistAlbums(artistName: artists[index]))
            }
        case .artistAlbums(let artistName):
            let artistAlbums = albums.filter { $0.artist == artistName || songs.filter { $0.artist == artistName }.map { $0.album }.contains($0.name) }
            if index < artistAlbums.count {
                let album = artistAlbums[index]
                push(.albumSongs(albumName: album.name, artistName: album.artist))
            }
        case .genres:
            if index < genres.count {
                push(.genreSongs(genreName: genres[index]))
            }
        case .genreSongs(let genreName):
            let genreSongs = songs.filter { $0.genre == genreName }
            if index < genreSongs.count {
                audioPlayer.loadPlaylist(genreSongs, startIndex: index)
                push(.nowPlaying)
            }
        case .playlists:
            if index < playlists.count {
                push(.playlistSongs(playlistIndex: index))
            }
        case .playlistSongs(let playlistIndex):
            let pl = playlists[playlistIndex]
            let plSongs = pl.songIDs.compactMap { id in songs.first { $0.id == id } }
            if index < plSongs.count {
                audioPlayer.loadPlaylist(plSongs, startIndex: index)
                push(.nowPlaying)
            }
        case .settings:
            handleSettingsSelect(at: index)
        case .nowPlaying:
            // Center button cycles through bottom bar views
            break
        default:
            break
        }
    }
    
    private func handleSettingsSelect(at index: Int) {
        switch index {
        case 0: push(.about)
        case 4: push(.deviceColorSelection)
        default: break
        }
    }
    
    func itemCount(for screen: Screen) -> Int {
        switch screen {
        case .mainMenu: return 4
        case .musicMenu: return 7
        case .songs: return songs.count
        case .albums: return albums.count
        case .artists: return artists.count
        case .genres: return genres.count
        case .playlists: return playlists.count
        case .albumSongs(let name, let artist):
            return songs.filter { $0.album == name && ($0.albumArtist == artist || $0.artist == artist) }.count
        case .artistAlbums(let artistName):
            return albums.filter { $0.artist == artistName || songs.filter { $0.artist == artistName }.map { $0.album }.contains($0.name) }.count
        case .genreSongs(let genre):
            return songs.filter { $0.genre == genre }.count
        case .playlistSongs(let idx):
            let pls = loadPlaylists()
            if idx < pls.count {
                return pls[idx].songIDs.count
            }
            return 0
        case .settings: return 9
        case .deviceColorSelection: return DeviceColorOption.allCases.count
        default: return 0
        }
    }
    
    // MARK: - Playlists persistence
    
    private func loadPlaylists() -> [PlaylistModel] {
        guard let data = UserDefaults.standard.data(forKey: "playlists"),
              let decoded = try? JSONDecoder().decode([PlaylistModel].self, from: data) else {
            return []
        }
        return decoded
    }
    
    func savePlaylists(_ playlists: [PlaylistModel]) {
        if let data = try? JSONEncoder().encode(playlists) {
            UserDefaults.standard.set(data, forKey: "playlists")
        }
    }
    
    // MARK: - Click Sound
    
    private func playClickSound() {
        guard settingsService.settings.clickWheelSoundEnabled else { return }
        NSSound(named: "Tink")?.play()
    }
}
