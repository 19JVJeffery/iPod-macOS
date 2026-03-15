# ClassiPod – iPod Classic Emulator for macOS

A native macOS iPod Classic emulator built entirely in **SwiftUI** and **AVFoundation** — no Flutter, no third-party dependencies.

## Native Swift App (recommended)

The primary implementation lives in the `ClassipodSwift/` directory. It is a standalone Xcode project requiring only Xcode 15+ and macOS 13+.

### Requirements

- macOS 13.0 or later
- Xcode 15 or later
- No Flutter, no CocoaPods, no external dependencies

### Building

1. Open the Xcode project:

```bash
open ClassipodSwift/ClassipodSwift.xcodeproj
```

2. Select the **ClassipodSwift** scheme and **My Mac** as destination.

3. Press **⌘R** to build and run.

### Features

- **iPod Classic UI** — faithful reproduction of the original device frame, screen, and click wheel in 12 color variants (silver, black, red, orange, yellow, gold, lime, green, blue, pink, purple, brown)
- **Click Wheel** — circular drag gesture for scrolling; tap cardinal zones for MENU/prev/play/next; tap center to select
- **Music Library** — scans user-selected folders recursively; reads ID3/iTunes metadata via AVFoundation; supports MP3, M4A, AAC, FLAC, WAV, AIFF, CAF
- **Now Playing** — artwork, song/artist/album info, progress bar with scrubbing, shuffle, repeat (off/all/one), lyrics display, star rating
- **Cover Flow** — 3D album art browsing
- **Search** — full-text search across title, artist, album
- **Settings** — device color, light/dark theme, click wheel sensitivity, click sound toggle, shuffle, repeat, music folder management
- **Battery indicator** — reads real macOS battery level via IOKit
- **Sandbox-compliant** — uses security-scoped bookmarks for persistent music folder access

---

## Legacy Flutter App

The original Flutter implementation is still present and can be built as follows.

### Requirements (Flutter)

- [Flutter](https://docs.flutter.dev/get-started/install) (version 3.35.7 or compatible)
- Xcode 14 or later
- [CocoaPods](https://cocoapods.org/) (`sudo gem install cocoapods`)

### Building (Flutter)

**Important:** Do not open the Xcode project directly. Run Flutter setup first.

```bash
flutter pub get
open macos/Runner.xcworkspace
```

Or build from the command line:

```bash
flutter run -d macos
```

### Common Flutter errors

**`could not find included file 'ephemeral/Flutter-Generated.xcconfig'`** — Run `flutter pub get` first.

**`Unable to read contents of XCFileList '.../Pods-Runner-frameworks-...'`** — Run `flutter pub get` (or `cd macos && pod install` if the error persists).
