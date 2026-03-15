import Foundation
import AVFoundation
import AppKit

class MusicLibraryService: ObservableObject {
    static let shared = MusicLibraryService()
    
    @Published var songs: [Song] = []
    @Published var isScanning: Bool = false
    @Published var scanProgress: Double = 0
    
    private let supportedExtensions = [
        "mp3", "m4a", "aac", "flac", "wav", "aiff", "aif",
        "caf" // Core Audio Format - native macOS container format
    ]
    private var scanTask: Task<Void, Never>?
    
    func scanDirectories(_ urls: [URL]) {
        scanTask?.cancel()
        scanTask = Task { @MainActor in
            isScanning = true
            scanProgress = 0
            songs = []
            
            var allFileURLs: [URL] = []
            for url in urls {
                guard !Task.isCancelled else { break }
                allFileURLs += collectAudioFiles(in: url)
            }
            
            var loadedSongs: [Song] = []
            let total = Double(allFileURLs.count)
            
            for (i, fileURL) in allFileURLs.enumerated() {
                guard !Task.isCancelled else { break }
                if let song = await loadSong(from: fileURL) {
                    loadedSongs.append(song)
                }
                scanProgress = Double(i + 1) / max(total, 1)
            }
            
            loadedSongs.sort { 
                if $0.album == $1.album {
                    return $0.trackNumber < $1.trackNumber
                }
                return $0.album < $1.album 
            }
            songs = loadedSongs
            isScanning = false
        }
    }
    
    private func collectAudioFiles(in directory: URL) -> [URL] {
        var results: [URL] = []
        guard let enumerator = FileManager.default.enumerator(
            at: directory,
            includingPropertiesForKeys: [.isRegularFileKey, .isDirectoryKey],
            options: [.skipsHiddenFiles]
        ) else { return results }
        
        for case let url as URL in enumerator {
            let ext = url.pathExtension.lowercased()
            if supportedExtensions.contains(ext) {
                results.append(url)
            }
        }
        return results
    }
    
    private func loadSong(from url: URL) async -> Song? {
        let asset = AVURLAsset(url: url)
        
        do {
            let metadata = try await asset.load(.commonMetadata)
            let duration = try await asset.load(.duration)
            
            var title = url.deletingPathExtension().lastPathComponent
            var artist = "Unknown Artist"
            var album = "Unknown Album"
            var albumArtist = ""
            var genre = ""
            var trackNumber = 0
            var artworkData: Data? = nil
            var lyrics: String? = nil
            
            for item in metadata {
                guard let key = item.commonKey else { continue }
                switch key {
                case .commonKeyTitle:
                    if let value = try? await item.load(.stringValue), !value.isEmpty {
                        title = value
                    }
                case .commonKeyArtist:
                    if let value = try? await item.load(.stringValue), !value.isEmpty {
                        artist = value
                    }
                case .commonKeyAlbumName:
                    if let value = try? await item.load(.stringValue), !value.isEmpty {
                        album = value
                    }
                case .commonKeyArtwork:
                    if let data = try? await item.load(.dataValue) {
                        artworkData = data
                    }
                default:
                    break
                }
            }
            
            // Load additional metadata (track number, genre, album artist)
            // Use string-based identifier matching for reliability across macOS versions
            let allMetadata = (try? await asset.loadMetadata(for: .id3Metadata)) ?? []
            let mp4Metadata = (try? await asset.loadMetadata(for: .iTunesMetadata)) ?? []
            
            for item in allMetadata + mp4Metadata {
                guard let identifier = item.identifier else { continue }
                let idStr = identifier.rawValue
                
                if idStr.contains("TRCK") || idStr.contains("trkn") {
                    // Track number
                    if let value = try? await item.load(.stringValue) {
                        let parts = value.split(separator: "/")
                        trackNumber = Int(parts.first ?? "0") ?? 0
                    } else if let num = try? await item.load(.numberValue) {
                        trackNumber = num.intValue
                    }
                } else if idStr.contains("TCON") || idStr.contains("©gen") || idStr.contains("gnre") {
                    // Genre
                    if let value = try? await item.load(.stringValue), !value.isEmpty {
                        genre = value
                    }
                } else if idStr.contains("TPE2") || idStr.contains("aART") {
                    // Album artist
                    if let value = try? await item.load(.stringValue), !value.isEmpty {
                        albumArtist = value
                    }
                } else if idStr.contains("USLT") {
                    // Unsynchronized lyrics
                    if let value = try? await item.load(.stringValue), !value.isEmpty {
                        lyrics = value
                    }
                }
            }
            
            let durationSeconds = CMTimeGetSeconds(duration)
            
            return Song(
                url: url,
                title: title,
                artist: artist,
                albumArtist: albumArtist,
                album: album,
                genre: genre,
                trackNumber: trackNumber,
                duration: durationSeconds.isNaN ? 0 : durationSeconds,
                artworkData: artworkData,
                lyrics: lyrics
            )
        } catch {
            // Fallback: create minimal song with filename
            return Song(
                url: url,
                title: url.deletingPathExtension().lastPathComponent,
                artist: "Unknown Artist",
                album: "Unknown Album"
            )
        }
    }
    
    func addMusicDirectory(_ url: URL) {
        let settings = SettingsService.shared
        // Save bookmark for security-scoped access
        if let bookmark = try? url.bookmarkData(options: .withSecurityScope, includingResourceValuesForKeys: nil, relativeTo: nil) {
            var bookmarks = settings.settings.musicDirectoryBookmarks
            bookmarks.append(bookmark)
            settings.settings.musicDirectoryBookmarks = bookmarks
        }
        scanDirectories([url])
    }
    
    func loadSavedDirectories() {
        let settings = SettingsService.shared
        var resolvedURLs: [URL] = []
        
        for bookmark in settings.settings.musicDirectoryBookmarks {
            var isStale = false
            if let url = try? URL(resolvingBookmarkData: bookmark, options: .withSecurityScope, relativeTo: nil, bookmarkDataIsStale: &isStale) {
                if url.startAccessingSecurityScopedResource() {
                    resolvedURLs.append(url)
                }
            }
        }
        
        if !resolvedURLs.isEmpty {
            scanDirectories(resolvedURLs)
        }
    }
}
