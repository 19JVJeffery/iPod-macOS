import Foundation

enum DeviceColorOption: String, Codable, CaseIterable {
    case silver, black, red, orange, yellow, gold, lime, green, blue, pink, purple, brown
    
    var displayName: String {
        rawValue.capitalized
    }
    
    var isDark: Bool {
        switch self {
        case .black, .red, .yellow, .gold, .green, .purple: return true
        default: return false
        }
    }
    
    var frameGradient1: String {
        switch self {
        case .silver: return "F2F2F2"
        case .black: return "939295"
        case .red: return "E74954"
        case .orange: return "FFE7B6"
        case .yellow: return "FFF0B8"
        case .gold: return "FFF3C3"
        case .lime: return "E9FF87"
        case .green: return "E0FF97"
        case .blue: return "9FD3FF"
        case .pink: return "FFD2EE"
        case .purple: return "E6C9FF"
        case .brown: return "F1E0D6"
        }
    }
    
    var frameGradient2: String {
        switch self {
        case .silver: return "ADADAD"
        case .black: return "262527"
        case .red: return "7C0015"
        case .orange: return "E37400"
        case .yellow: return "F2A300"
        case .gold: return "B27700"
        case .lime: return "3C9E00"
        case .green: return "0E5C2A"
        case .blue: return "0F4C9A"
        case .pink: return "D10072"
        case .purple: return "6A1B9A"
        case .brown: return "8D6E63"
        }
    }
    
    var controlBackgroundHex: String {
        switch self {
        case .silver: return "FFFFFF"
        case .black: return "212122"
        case .red: return "050505"
        case .orange: return "FFFFFF"
        case .yellow: return "050505"
        case .gold: return "050505"
        case .lime: return "FFFFFF"
        case .green: return "050505"
        case .blue: return "1F61B3"
        case .pink: return "FFFFFF"
        case .purple: return "050505"
        case .brown: return "4E342E"
        }
    }
    
    var controlBorderHex: String {
        switch self {
        case .silver: return "AEADAD"
        case .black: return "000000"
        case .red: return "1D1D1D"
        case .orange: return "F9B54E"
        case .yellow: return "1D1D1D"
        case .gold: return "1D1D1D"
        case .lime: return "A0D94B"
        case .green: return "1D1D1D"
        case .blue: return "3E7DD3"
        case .pink: return "F5A0CE"
        case .purple: return "1D1D1D"
        case .brown: return "BCAAA4"
        }
    }
    
    var innerButtonGradient1: String {
        switch self {
        case .silver: return "B1B1B0"
        case .black: return "282829"
        case .red: return "FF5F6D"
        case .orange: return "FFE2A1"
        case .yellow: return "FFEAA0"
        case .gold: return "FFE28C"
        case .lime: return "F2FFB5"
        case .green: return "C8FF6E"
        case .blue: return "4D8FE6"
        case .pink: return "FFC4E9"
        case .purple: return "F3DFFF"
        case .brown: return "5D4037"
        }
    }
    
    var innerButtonGradient2: String {
        switch self {
        case .silver: return "E1E1E1"
        case .black: return "676467"
        case .red: return "9A001F"
        case .orange: return "F59A28"
        case .yellow: return "F2A300"
        case .gold: return "D08900"
        case .lime: return "6BC300"
        case .green: return "4AA12A"
        case .blue: return "1C4F9A"
        case .pink: return "E20079"
        case .purple: return "B04CCC"
        case .brown: return "8D6E63"
        }
    }
    
    var buttonAccentHex: String {
        switch self {
        case .silver: return "8793A0"
        case .black: return "FFFFFF"
        case .red: return "F7F7F2"
        case .orange: return "E06600"
        case .yellow: return "F7F7F2"
        case .gold: return "F7F7F2"
        case .lime: return "318100"
        case .green: return "F7F7F2"
        case .blue: return "F8FCFF"
        case .pink: return "D00066"
        case .purple: return "F7F7F2"
        case .brown: return "EDE0D4"
        }
    }
}

enum AppTheme: String, Codable {
    case light, dark
}

enum RepeatMode: String, Codable, CaseIterable {
    case off, all, one
    
    var displayName: String {
        switch self {
        case .off: return "Off"
        case .all: return "All"
        case .one: return "One"
        }
    }
}

enum ClickWheelSensitivity: String, Codable, CaseIterable {
    case veryLow, low, medium, high
    
    var displayName: String {
        switch self {
        case .veryLow: return "Very Low"
        case .low: return "Low"
        case .medium: return "Medium"
        case .high: return "High"
        }
    }
    
    var smallThreshold: Double {
        switch self {
        case .veryLow: return 64
        case .low: return 16
        case .medium: return 4
        case .high: return 0.2
        }
    }
    
    var bigThreshold: Double {
        switch self {
        case .veryLow: return 800
        case .low: return 200
        case .medium: return 50
        case .high: return 10
        }
    }
}

struct AppSettings: Codable {
    var deviceColor: DeviceColorOption = .silver
    var appTheme: AppTheme = .light
    var clickWheelSensitivity: ClickWheelSensitivity = .medium
    var isTouchScreenEnabled: Bool = false
    var repeatMode: RepeatMode = .off
    var isShuffleEnabled: Bool = false
    var clickWheelSoundEnabled: Bool = true
    var musicDirectoryBookmarks: [Data] = []
}
