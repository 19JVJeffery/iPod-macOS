import Foundation
import Combine

class SettingsService: ObservableObject {
    static let shared = SettingsService()
    
    @Published var settings: AppSettings {
        didSet { save() }
    }
    
    private let defaults = UserDefaults.standard
    private let key = "AppSettings"
    
    init() {
        if let data = defaults.data(forKey: key),
           let decoded = try? JSONDecoder().decode(AppSettings.self, from: data) {
            self.settings = decoded
        } else {
            self.settings = AppSettings()
        }
    }
    
    private func save() {
        if let data = try? JSONEncoder().encode(settings) {
            defaults.set(data, forKey: key)
        }
    }
    
    func resetToDefaults() {
        settings = AppSettings()
    }
}
