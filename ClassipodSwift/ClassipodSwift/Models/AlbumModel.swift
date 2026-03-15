import Foundation

struct AlbumModel: Identifiable, Equatable {
    let id: UUID
    let name: String
    let artist: String
    let songs: [Song]
    
    init(name: String, artist: String, songs: [Song]) {
        self.id = UUID()
        self.name = name
        self.artist = artist
        self.songs = songs
    }
    
    var artworkData: Data? {
        songs.first?.artworkData
    }
    
    var totalDuration: TimeInterval {
        songs.reduce(0) { $0 + $1.duration }
    }
    
    static func == (lhs: AlbumModel, rhs: AlbumModel) -> Bool {
        lhs.id == rhs.id
    }
}
