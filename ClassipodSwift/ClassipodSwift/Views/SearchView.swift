import SwiftUI

struct SearchView: View {
    @EnvironmentObject var vm: AppViewModel
    @State private var query: String = ""
    @State private var selectedResultIndex: Int = 0

    private var results: [Song] {
        guard !query.isEmpty else { return [] }
        let q = query.lowercased()
        return vm.songs.filter {
            $0.title.lowercased().contains(q) ||
            $0.artist.lowercased().contains(q) ||
            $0.album.lowercased().contains(q)
        }
    }

    var body: some View {
        VStack(spacing: 0) {
            iPodTitleBar(title: "Search")

            // Search field
            HStack(spacing: 6) {
                Image(systemName: "magnifyingglass")
                    .font(.system(size: 11))
                    .foregroundColor(.gray)
                TextField("Search songs, artists, albums", text: $query)
                    .font(.system(size: 11))
                    .textFieldStyle(.plain)
                    .foregroundColor(.black)
                if !query.isEmpty {
                    Button {
                        query = ""
                    } label: {
                        Image(systemName: "xmark.circle.fill")
                            .font(.system(size: 11))
                            .foregroundColor(.gray)
                    }
                    .buttonStyle(.plain)
                }
            }
            .padding(.horizontal, 8)
            .padding(.vertical, 6)
            .background(Color(hex: "D5DEE5"))

            Divider()

            if query.isEmpty {
                Spacer()
                VStack(spacing: 8) {
                    Image(systemName: "magnifyingglass")
                        .font(.system(size: 28))
                        .foregroundColor(.gray.opacity(0.4))
                    Text("Type to search your library")
                        .font(.system(size: 11))
                        .foregroundColor(.gray)
                }
                Spacer()
            } else if results.isEmpty {
                Spacer()
                VStack(spacing: 8) {
                    Image(systemName: "music.note.list")
                        .font(.system(size: 28))
                        .foregroundColor(.gray.opacity(0.4))
                    Text("No results for \"\(query)\"")
                        .font(.system(size: 11))
                        .foregroundColor(.gray)
                }
                Spacer()
            } else {
                ScrollViewReader { proxy in
                    ScrollView(.vertical, showsIndicators: false) {
                        LazyVStack(spacing: 0) {
                            ForEach(Array(results.enumerated()), id: \.element.id) { idx, song in
                                SongRowView(song: song, isSelected: idx == selectedResultIndex)
                                    .id(idx)
                                    .onTapGesture {
                                        vm.audioPlayer.loadPlaylist(results, startIndex: idx)
                                        vm.push(.nowPlaying)
                                    }
                            }
                        }
                    }
                    .onChange(of: selectedResultIndex) { val in
                        withAnimation { proxy.scrollTo(val, anchor: .center) }
                    }
                }
            }
        }
        .background(Color(hex: "C5D0D8"))
        .onChange(of: vm.selectedIndex) { idx in
            selectedResultIndex = min(max(idx, 0), max(results.count - 1, 0))
        }
    }
}
