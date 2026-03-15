import SwiftUI

struct CoverFlowView: View {
    @EnvironmentObject var vm: AppViewModel
    @State private var selectedAlbumIndex: Int = 0

    var albums: [AlbumModel] { vm.albums }

    var body: some View {
        VStack(spacing: 0) {
            iPodTitleBar(title: "Cover Flow")

            if albums.isEmpty {
                Spacer()
                Image(systemName: "square.stack.3d.up")
                    .font(.system(size: 30))
                    .foregroundColor(.gray.opacity(0.5))
                Text("No Albums")
                    .font(.system(size: 12))
                    .foregroundColor(.gray)
                Spacer()
            } else {
                // Cover flow art area
                ZStack {
                    Color.black

                    // Side covers (context)
                    HStack(spacing: 0) {
                        // Left neighbor
                        if selectedAlbumIndex > 0 {
                            albumCoverView(albums[selectedAlbumIndex - 1], size: 60, angle: 45, offset: -20)
                                .opacity(0.6)
                        }
                        Spacer()
                        // Right neighbor
                        if selectedAlbumIndex < albums.count - 1 {
                            albumCoverView(albums[selectedAlbumIndex + 1], size: 60, angle: -45, offset: 20)
                                .opacity(0.6)
                        }
                    }
                    .padding(.horizontal, 10)

                    // Center cover
                    albumCoverView(albums[selectedAlbumIndex], size: 100, angle: 0, offset: 0)
                        .shadow(color: .black.opacity(0.6), radius: 10, x: 0, y: 4)
                }
                .frame(height: 140)
                .gesture(
                    DragGesture(minimumDistance: 20)
                        .onEnded { val in
                            if val.translation.width < -20, selectedAlbumIndex < albums.count - 1 {
                                withAnimation { selectedAlbumIndex += 1 }
                            } else if val.translation.width > 20, selectedAlbumIndex > 0 {
                                withAnimation { selectedAlbumIndex -= 1 }
                            }
                        }
                )

                // Album info
                VStack(spacing: 2) {
                    Text(albums[selectedAlbumIndex].name)
                        .font(.system(size: 11, weight: .semibold))
                        .foregroundColor(.black)
                        .lineLimit(1)
                    Text(albums[selectedAlbumIndex].artist)
                        .font(.system(size: 10))
                        .foregroundColor(.gray)
                        .lineLimit(1)
                }
                .padding(.vertical, 6)
                .frame(maxWidth: .infinity)
                .background(Color(hex: "C5D0D8"))

                // Track listing for selected album
                ScrollView(.vertical, showsIndicators: false) {
                    LazyVStack(spacing: 0) {
                        ForEach(Array(albums[selectedAlbumIndex].songs.enumerated()), id: \.element.id) { idx, song in
                            HStack {
                                Text("\(idx + 1)")
                                    .font(.system(size: 9))
                                    .foregroundColor(.gray)
                                    .frame(width: 16)
                                Text(song.title)
                                    .font(.system(size: 11))
                                    .foregroundColor(.black)
                                    .lineLimit(1)
                                Spacer()
                                Text(song.durationString)
                                    .font(.system(size: 9))
                                    .foregroundColor(.gray)
                            }
                            .padding(.horizontal, 10)
                            .padding(.vertical, 3)
                            .onTapGesture {
                                vm.audioPlayer.loadPlaylist(albums[selectedAlbumIndex].songs, startIndex: idx)
                                vm.push(.nowPlaying)
                            }
                            Divider().opacity(0.3)
                        }
                    }
                }
                .background(Color(hex: "C5D0D8"))
            }
        }
        .background(Color(hex: "C5D0D8"))
        .onChange(of: vm.selectedIndex) { idx in
            selectedAlbumIndex = min(max(idx, 0), max(albums.count - 1, 0))
        }
    }

    private func albumCoverView(_ album: AlbumModel, size: CGFloat, angle: Double, offset: CGFloat) -> some View {
        Group {
            if let data = album.artworkData, let img = NSImage(data: data) {
                Image(nsImage: img)
                    .resizable()
                    .scaledToFill()
                    .frame(width: size, height: size)
                    .clipped()
            } else {
                Rectangle()
                    .fill(
                        LinearGradient(
                            colors: [Color(hex: "9BA7B4"), Color(hex: "6B7885")],
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing
                        )
                    )
                    .frame(width: size, height: size)
                    .overlay(
                        Image(systemName: "music.note")
                            .font(.system(size: size * 0.35))
                            .foregroundColor(.white.opacity(0.5))
                    )
            }
        }
        .rotation3DEffect(.degrees(angle), axis: (x: 0, y: 1, z: 0))
        .offset(x: offset)
    }
}
