import SwiftUI

// MARK: - Shared screen chrome (title bar + scrollable list)
struct MenuListView: View {
    let title: String
    let items: [String]
    let selectedIndex: Int

    @EnvironmentObject var vm: AppViewModel

    var body: some View {
        VStack(spacing: 0) {
            // Title bar
            iPodTitleBar(title: title)

            // Scrollable list
            ScrollViewReader { proxy in
                ScrollView(.vertical, showsIndicators: false) {
                    LazyVStack(spacing: 0) {
                        ForEach(Array(items.enumerated()), id: \.offset) { idx, item in
                            MenuRowView(
                                text: item,
                                isSelected: idx == selectedIndex,
                                showChevron: true
                            )
                            .id(idx)
                        }
                    }
                }
                .onChange(of: selectedIndex) { newVal in
                    withAnimation(.linear(duration: 0.1)) {
                        proxy.scrollTo(newVal, anchor: .center)
                    }
                }
            }
        }
        .background(Color(hex: "C5D0D8"))
    }
}

// MARK: - Song list
struct SongListView: View {
    let title: String
    let songs: [Song]
    let selectedIndex: Int

    @EnvironmentObject var vm: AppViewModel

    var body: some View {
        VStack(spacing: 0) {
            iPodTitleBar(title: title)
            ScrollViewReader { proxy in
                ScrollView(.vertical, showsIndicators: false) {
                    LazyVStack(spacing: 0) {
                        ForEach(Array(songs.enumerated()), id: \.element.id) { idx, song in
                            SongRowView(song: song, isSelected: idx == selectedIndex)
                                .id(idx)
                        }
                    }
                }
                .onChange(of: selectedIndex) { newVal in
                    withAnimation(.linear(duration: 0.1)) {
                        proxy.scrollTo(newVal, anchor: .center)
                    }
                }
            }
        }
        .background(Color(hex: "C5D0D8"))
    }
}

// MARK: - Album list
struct AlbumListView: View {
    let albums: [AlbumModel]
    let selectedIndex: Int

    @EnvironmentObject var vm: AppViewModel

    var body: some View {
        VStack(spacing: 0) {
            iPodTitleBar(title: "Albums")
            ScrollViewReader { proxy in
                ScrollView(.vertical, showsIndicators: false) {
                    LazyVStack(spacing: 0) {
                        ForEach(Array(albums.enumerated()), id: \.element.id) { idx, album in
                            AlbumRowView(album: album, isSelected: idx == selectedIndex)
                                .id(idx)
                        }
                    }
                }
                .onChange(of: selectedIndex) { newVal in
                    withAnimation(.linear(duration: 0.1)) {
                        proxy.scrollTo(newVal, anchor: .center)
                    }
                }
            }
        }
        .background(Color(hex: "C5D0D8"))
    }
}

// MARK: - iPod-style title bar
func iPodTitleBar(title: String) -> some View {
    ZStack {
        LinearGradient(
            colors: [Color(hex: "6B97C8"), Color(hex: "3A6EA5")],
            startPoint: .top,
            endPoint: .bottom
        )
        Text(title)
            .font(.system(size: 13, weight: .semibold))
            .foregroundColor(.white)
            .shadow(color: .black.opacity(0.3), radius: 1, x: 0, y: 1)
    }
    .frame(height: 20)
}

// MARK: - Menu row
struct MenuRowView: View {
    let text: String
    let isSelected: Bool
    var showChevron: Bool = true

    var body: some View {
        HStack {
            Text(text)
                .font(.system(size: 12))
                .foregroundColor(isSelected ? .white : .black)
                .lineLimit(1)
            Spacer()
            if showChevron {
                Image(systemName: "chevron.right")
                    .font(.system(size: 9))
                    .foregroundColor(isSelected ? .white.opacity(0.8) : .gray)
            }
        }
        .padding(.horizontal, 10)
        .padding(.vertical, 4)
        .background(
            isSelected
                ? LinearGradient(
                    colors: [Color(hex: "3A6EBB"), Color(hex: "1C4A8A")],
                    startPoint: .top, endPoint: .bottom
                  )
                : LinearGradient(
                    colors: [Color(hex: "C5D0D8"), Color(hex: "C5D0D8")],
                    startPoint: .top, endPoint: .bottom
                  )
        )
        Divider().opacity(0.3)
    }
}

// MARK: - Song row
struct SongRowView: View {
    let song: Song
    let isSelected: Bool

    var body: some View {
        HStack(spacing: 8) {
            // Artwork thumbnail
            if let img = song.artworkImage {
                img.swiftUIImage
                    .resizable()
                    .scaledToFill()
                    .frame(width: 28, height: 28)
                    .clipShape(RoundedRectangle(cornerRadius: 3))
            } else {
                RoundedRectangle(cornerRadius: 3)
                    .fill(Color.gray.opacity(0.3))
                    .frame(width: 28, height: 28)
                    .overlay(
                        Image(systemName: "music.note")
                            .font(.system(size: 12))
                            .foregroundColor(.gray)
                    )
            }

            VStack(alignment: .leading, spacing: 1) {
                Text(song.title)
                    .font(.system(size: 11, weight: .medium))
                    .foregroundColor(isSelected ? .white : .black)
                    .lineLimit(1)
                Text(song.artist)
                    .font(.system(size: 10))
                    .foregroundColor(isSelected ? .white.opacity(0.8) : .gray)
                    .lineLimit(1)
            }
            Spacer()
            Text(song.durationString)
                .font(.system(size: 10))
                .foregroundColor(isSelected ? .white.opacity(0.8) : .gray)
        }
        .padding(.horizontal, 8)
        .padding(.vertical, 3)
        .background(
            isSelected
                ? LinearGradient(
                    colors: [Color(hex: "3A6EBB"), Color(hex: "1C4A8A")],
                    startPoint: .top, endPoint: .bottom
                  )
                : LinearGradient(
                    colors: [Color(hex: "C5D0D8"), Color(hex: "C5D0D8")],
                    startPoint: .top, endPoint: .bottom
                  )
        )
        Divider().opacity(0.3)
    }
}

// MARK: - Album row
struct AlbumRowView: View {
    let album: AlbumModel
    let isSelected: Bool

    var body: some View {
        HStack(spacing: 8) {
            if let data = album.artworkData, let img = NSImage(data: data) {
                Image(nsImage: img)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 28, height: 28)
                    .clipShape(RoundedRectangle(cornerRadius: 3))
            } else {
                RoundedRectangle(cornerRadius: 3)
                    .fill(Color.gray.opacity(0.3))
                    .frame(width: 28, height: 28)
                    .overlay(
                        Image(systemName: "square.stack")
                            .font(.system(size: 12))
                            .foregroundColor(.gray)
                    )
            }

            VStack(alignment: .leading, spacing: 1) {
                Text(album.name)
                    .font(.system(size: 11, weight: .medium))
                    .foregroundColor(isSelected ? .white : .black)
                    .lineLimit(1)
                Text(album.artist)
                    .font(.system(size: 10))
                    .foregroundColor(isSelected ? .white.opacity(0.8) : .gray)
                    .lineLimit(1)
            }
            Spacer()
            Image(systemName: "chevron.right")
                .font(.system(size: 9))
                .foregroundColor(isSelected ? .white.opacity(0.8) : .gray)
        }
        .padding(.horizontal, 8)
        .padding(.vertical, 3)
        .background(
            isSelected
                ? LinearGradient(
                    colors: [Color(hex: "3A6EBB"), Color(hex: "1C4A8A")],
                    startPoint: .top, endPoint: .bottom
                  )
                : LinearGradient(
                    colors: [Color(hex: "C5D0D8"), Color(hex: "C5D0D8")],
                    startPoint: .top, endPoint: .bottom
                  )
        )
        Divider().opacity(0.3)
    }
}
