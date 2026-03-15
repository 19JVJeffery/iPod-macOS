import SwiftUI

struct ContentView: View {
    @EnvironmentObject var vm: AppViewModel
    @EnvironmentObject var settings: SettingsService
    
    var body: some View {
        GeometryReader { geo in
            DeviceFrameView(geometry: geo)
                .environmentObject(vm)
                .environmentObject(settings)
        }
        .background(Color.clear)
        .preferredColorScheme(settings.settings.appTheme == .dark ? .dark : .light)
    }
}
