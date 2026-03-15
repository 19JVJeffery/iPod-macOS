import SwiftUI

struct NowPlayingView: View {
    @EnvironmentObject var vm: AppViewModel
    @EnvironmentObject var audioPlayer: AudioPlayerService

    @State private var showLyrics = false
    @State private var bottomBarMode: BottomBarMode = .progress

    enum BottomBarMode: CaseIterable {
        case progress, shuffle, rating, lyrics
    }

    var body: some View {
        VStack(spacing: 0) {
            // Title bar
            iPodTitleBar(title: "Now Playing")

            if let song = audioPlayer.currentSong {
                VStack(spacing: 0) {
                    // Artwork
                    artworkView(song: song)
                        .padding(.top, 6)

                    // Song info
                    VStack(spacing: 2) {
                        Text(song.title)
                            .font(.system(size: 11, weight: .semibold))
                            .foregroundColor(.black)
                            .lineLimit(1)
                            .padding(.horizontal, 8)
                        Text(song.artist)
                            .font(.system(size: 10))
                            .foregroundColor(.gray)
                            .lineLimit(1)
                            .padding(.horizontal, 8)
                        Text(song.album)
                            .font(.system(size: 9))
                            .foregroundColor(.gray.opacity(0.8))
                            .lineLimit(1)
                            .padding(.horizontal, 8)
                    }
                    .padding(.top, 4)

                    // Progress bar
                    progressBar
                        .padding(.horizontal, 12)
                        .padding(.top, 6)

                    // Time labels
                    HStack {
                        Text(timeString(audioPlayer.currentTime))
                            .font(.system(size: 9))
                            .foregroundColor(.gray)
                        Spacer()
                        Text("-\(timeString(max(0, audioPlayer.duration - audioPlayer.currentTime)))")
                            .font(.system(size: 9))
                            .foregroundColor(.gray)
                    }
                    .padding(.horizontal, 14)
                    .padding(.top, 2)

                    // Controls bar
                    controlsBar
                        .padding(.top, 6)
                        .padding(.horizontal, 12)

                    // Track position
                    Text(audioPlayer.currentTrackPosition)
                        .font(.system(size: 9))
                        .foregroundColor(.gray.opacity(0.8))
                        .padding(.top, 3)

                    // Lyrics display (shown when lyrics are available and user cycles to lyrics mode)
                    if showLyrics, let lyrics = audioPlayer.currentSong?.lyrics {
                        ScrollView(.vertical, showsIndicators: false) {
                            Text(lyrics)
                                .font(.system(size: 9))
                                .foregroundColor(.black.opacity(0.7))
                                .multilineTextAlignment(.center)
                                .padding(.horizontal, 12)
                                .padding(.vertical, 4)
                        }
                        .frame(maxHeight: 40)
                    }

                    Spacer()
                }
            } else {
                emptyState
            }
        }
        .background(Color(hex: "C5D0D8"))
        .onChange(of: vm.selectedIndex) { _ in
            // Center button press cycles lyrics visibility
            if audioPlayer.currentSong?.lyrics != nil {
                showLyrics.toggle()
            }
        }
    }

    // MARK: - Artwork

    private func artworkView(song: Song) -> some View {
        Group {
            if let img = song.artworkImage {
                img.swiftUIImage
                    .resizable()
                    .scaledToFit()
                    .frame(width: 88, height: 88)
                    .clipShape(RoundedRectangle(cornerRadius: 6))
                    .shadow(color: .black.opacity(0.3), radius: 4, x: 0, y: 2)
            } else {
                RoundedRectangle(cornerRadius: 6)
                    .fill(
                        LinearGradient(
                            colors: [Color(hex: "9BA7B4"), Color(hex: "6B7885")],
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing
                        )
                    )
                    .frame(width: 88, height: 88)
                    .overlay(
                        Image(systemName: "music.note")
                            .font(.system(size: 36))
                            .foregroundColor(.white.opacity(0.6))
                    )
                    .shadow(color: .black.opacity(0.3), radius: 4, x: 0, y: 2)
            }
        }
    }

    // MARK: - Progress bar

    private var progressBar: some View {
        GeometryReader { geo in
            ZStack(alignment: .leading) {
                RoundedRectangle(cornerRadius: 2)
                    .fill(Color.gray.opacity(0.4))
                    .frame(height: 4)

                let progress = audioPlayer.duration > 0 ? audioPlayer.currentTime / audioPlayer.duration : 0
                RoundedRectangle(cornerRadius: 2)
                    .fill(Color(hex: "3A6EBB"))
                    .frame(width: geo.size.width * CGFloat(progress), height: 4)
            }
            .frame(height: 4)
            .contentShape(Rectangle())
            .onTapGesture { location in
                let ratio = location.x / geo.size.width
                audioPlayer.seek(to: audioPlayer.duration * Double(ratio))
            }
        }
        .frame(height: 4)
    }

    // MARK: - Controls

    private var controlsBar: some View {
        HStack(spacing: 0) {
            // Shuffle
            Button {
                audioPlayer.toggleShuffle()
            } label: {
                Image(systemName: "shuffle")
                    .font(.system(size: 12))
                    .foregroundColor(audioPlayer.isShuffleEnabled ? Color(hex: "3A6EBB") : .gray)
            }
            .buttonStyle(.plain)

            Spacer()

            // Previous
            Button { audioPlayer.previous() } label: {
                Image(systemName: "backward.fill")
                    .font(.system(size: 14))
                    .foregroundColor(.black)
            }
            .buttonStyle(.plain)

            Spacer()

            // Play/Pause
            Button { audioPlayer.togglePlayPause() } label: {
                Image(systemName: audioPlayer.isPlaying ? "pause.fill" : "play.fill")
                    .font(.system(size: 18))
                    .foregroundColor(.black)
            }
            .buttonStyle(.plain)

            Spacer()

            // Next
            Button { audioPlayer.next() } label: {
                Image(systemName: "forward.fill")
                    .font(.system(size: 14))
                    .foregroundColor(.black)
            }
            .buttonStyle(.plain)

            Spacer()

            // Repeat
            Button {
                let modes = RepeatMode.allCases
                let idx = modes.firstIndex(of: audioPlayer.repeatMode) ?? 0
                audioPlayer.setRepeatMode(modes[(idx + 1) % modes.count])
            } label: {
                Image(systemName: audioPlayer.repeatMode == .one ? "repeat.1" : "repeat")
                    .font(.system(size: 12))
                    .foregroundColor(audioPlayer.repeatMode != .off ? Color(hex: "3A6EBB") : .gray)
            }
            .buttonStyle(.plain)
        }
    }

    // MARK: - Empty state

    private var emptyState: some View {
        VStack(spacing: 12) {
            Spacer()
            Image(systemName: "music.note.list")
                .font(.system(size: 36))
                .foregroundColor(.gray.opacity(0.5))
            Text("No song playing")
                .font(.system(size: 12))
                .foregroundColor(.gray)
            Text("Browse Music to play a song")
                .font(.system(size: 10))
                .foregroundColor(.gray.opacity(0.7))
            Spacer()
        }
    }

    // MARK: - Helpers

    private func timeString(_ t: TimeInterval) -> String {
        let m = Int(t) / 60
        let s = Int(t) % 60
        return String(format: "%d:%02d", m, s)
    }
}
