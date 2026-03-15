import SwiftUI

struct SettingsView: View {
    let selectedIndex: Int
    @EnvironmentObject var vm: AppViewModel
    @EnvironmentObject var settings: SettingsService
    @EnvironmentObject var musicLibrary: MusicLibraryService
    @State private var showFolderPicker = false
    @State private var showResetAlert = false

    private let items: [(String, String)] = [
        ("About", "info.circle"),
        ("Music Folder", "folder.badge.plus"),
        ("Click Wheel Sound", "speaker.wave.2"),
        ("Touch Screen", "hand.point.up"),
        ("Device Color", "paintpalette"),
        ("Theme", "moon.circle"),
        ("Shuffle", "shuffle"),
        ("Repeat", "repeat"),
        ("Reset Settings", "arrow.counterclockwise")
    ]

    var body: some View {
        VStack(spacing: 0) {
            iPodTitleBar(title: "Settings")

            ScrollViewReader { proxy in
                ScrollView(.vertical, showsIndicators: false) {
                    LazyVStack(spacing: 0) {
                        ForEach(Array(items.enumerated()), id: \.offset) { idx, item in
                            settingsRow(idx: idx, label: item.0, icon: item.1)
                                .id(idx)
                        }
                    }
                }
                .onChange(of: selectedIndex) { val in
                    withAnimation { proxy.scrollTo(val, anchor: .center) }
                }
            }
        }
        .background(Color(hex: "C5D0D8"))
        .sheet(isPresented: $showFolderPicker) {
            // NSOpenPanel for folder picking is triggered via button tap
        }
        .onChange(of: selectedIndex) { idx in
            // Select action via click wheel center button is handled in AppViewModel
            // But double-tap on Music Folder should open picker
        }
    }

    @ViewBuilder
    private func settingsRow(idx: Int, label: String, icon: String) -> some View {
        let isSelected = idx == selectedIndex
        HStack(spacing: 8) {
            Image(systemName: icon)
                .font(.system(size: 11))
                .foregroundColor(isSelected ? .white : Color(hex: "3A6EBB"))
                .frame(width: 18)

            Text(label)
                .font(.system(size: 12))
                .foregroundColor(isSelected ? .white : .black)

            Spacer()

            // Value display
            Group {
                switch idx {
                case 1:
                    // Music Folder
                    Button {
                        openFolderPicker()
                    } label: {
                        Text(musicLibrary.isScanning ? "Scanning..." : "Add Folder")
                            .font(.system(size: 10))
                            .foregroundColor(isSelected ? .white.opacity(0.8) : Color(hex: "3A6EBB"))
                    }
                    .buttonStyle(.plain)
                case 2:
                    Toggle("", isOn: $settings.settings.clickWheelSoundEnabled)
                        .labelsHidden()
                        .scaleEffect(0.6)
                case 3:
                    Toggle("", isOn: $settings.settings.isTouchScreenEnabled)
                        .labelsHidden()
                        .scaleEffect(0.6)
                case 4:
                    Text(settings.settings.deviceColor.displayName)
                        .font(.system(size: 10))
                        .foregroundColor(isSelected ? .white.opacity(0.8) : .gray)
                    Image(systemName: "chevron.right")
                        .font(.system(size: 9))
                        .foregroundColor(isSelected ? .white.opacity(0.6) : .gray)
                case 5:
                    Button {
                        settings.settings.appTheme = settings.settings.appTheme == .light ? .dark : .light
                    } label: {
                        Text(settings.settings.appTheme == .light ? "Light" : "Dark")
                            .font(.system(size: 10))
                            .foregroundColor(isSelected ? .white.opacity(0.8) : .gray)
                    }
                    .buttonStyle(.plain)
                case 6:
                    Toggle("", isOn: $settings.settings.isShuffleEnabled)
                        .labelsHidden()
                        .scaleEffect(0.6)
                case 7:
                    Text(settings.settings.repeatMode.displayName)
                        .font(.system(size: 10))
                        .foregroundColor(isSelected ? .white.opacity(0.8) : .gray)
                case 8:
                    Button {
                        settings.resetToDefaults()
                    } label: {
                        Text("Reset")
                            .font(.system(size: 10))
                            .foregroundColor(isSelected ? .white.opacity(0.8) : .red)
                    }
                    .buttonStyle(.plain)
                default:
                    Image(systemName: "chevron.right")
                        .font(.system(size: 9))
                        .foregroundColor(isSelected ? .white.opacity(0.6) : .gray)
                }
            }
        }
        .padding(.horizontal, 10)
        .padding(.vertical, 5)
        .background(
            isSelected
                ? LinearGradient(colors: [Color(hex: "3A6EBB"), Color(hex: "1C4A8A")], startPoint: .top, endPoint: .bottom)
                : LinearGradient(colors: [Color(hex: "C5D0D8"), Color(hex: "C5D0D8")], startPoint: .top, endPoint: .bottom)
        )
        Divider().opacity(0.3)
    }

    private func openFolderPicker() {
        let panel = NSOpenPanel()
        panel.canChooseFiles = false
        panel.canChooseDirectories = true
        panel.allowsMultipleSelection = false
        panel.prompt = "Select Music Folder"
        if panel.runModal() == .OK, let url = panel.url {
            musicLibrary.addMusicDirectory(url)
        }
    }
}
