import Foundation

struct PlaylistModel: Identifiable, Equatable, Codable {
    let id: UUID
    var name: String
    var songIDs: [UUID]
    
    init(id: UUID = UUID(), name: String, songIDs: [UUID] = []) {
        self.id = id
        self.name = name
        self.songIDs = songIDs
    }
    
    static func == (lhs: PlaylistModel, rhs: PlaylistModel) -> Bool {
        lhs.id == rhs.id
    }
}
