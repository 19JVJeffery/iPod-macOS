import SwiftUI

@main
struct ClassipodSwiftApp: App {
    @NSApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(AppViewModel.shared)
                .environmentObject(SettingsService.shared)
                .environmentObject(AudioPlayerService.shared)
                .environmentObject(MusicLibraryService.shared)
        }
        .windowStyle(.hiddenTitleBar)
        .commands {
            CommandGroup(replacing: .newItem) {}
        }
    }
}
