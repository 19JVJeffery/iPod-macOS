import Foundation
import AppKit

struct Song: Identifiable, Codable, Equatable {
    let id: UUID
    let url: URL
    let title: String
    let artist: String
    let albumArtist: String
    let album: String
    let genre: String
    let trackNumber: Int
    let duration: TimeInterval
    var rating: Int
    var artworkData: Data?
    var lyrics: String?
    
    init(id: UUID = UUID(), url: URL, title: String, artist: String, albumArtist: String = "", album: String, genre: String = "", trackNumber: Int = 0, duration: TimeInterval = 0, rating: Int = 0, artworkData: Data? = nil, lyrics: String? = nil) {
        self.id = id
        self.url = url
        self.title = title
        self.artist = artist
        self.albumArtist = albumArtist.isEmpty ? artist : albumArtist
        self.album = album
        self.genre = genre
        self.trackNumber = trackNumber
        self.duration = duration
        self.rating = rating
        self.artworkData = artworkData
        self.lyrics = lyrics
    }
    
    var artworkImage: NSImage? {
        guard let data = artworkData else { return nil }
        return NSImage(data: data)
    }
    
    var durationString: String {
        let minutes = Int(duration) / 60
        let seconds = Int(duration) % 60
        return String(format: "%d:%02d", minutes, seconds)
    }
    
    static func == (lhs: Song, rhs: Song) -> Bool {
        lhs.id == rhs.id
    }
}
