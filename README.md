# classipod – iPod Classic Emulator for macOS

A Flutter-based iPod Classic emulator for macOS.

## Requirements

- [Flutter](https://docs.flutter.dev/get-started/install) (version 3.35.7 or compatible)
- Xcode 14 or later (macOS builds)
- [CocoaPods](https://cocoapods.org/) (`sudo gem install cocoapods`)

## Building

**Important:** Do not open the Xcode project directly after cloning. You must run the Flutter setup steps first.

### 1. Install Flutter dependencies

```bash
flutter pub get
```

This generates the `macos/Flutter/ephemeral/` directory (including `Flutter-Generated.xcconfig`) and installs CocoaPods dependencies automatically.

### 2. Open in Xcode

Open the **workspace** (not the `.xcodeproj`) in Xcode:

```bash
open macos/Runner.xcworkspace
```

Or double-click `macos/Runner.xcworkspace` in Finder.

### 3. Build & run

Select the **Runner** scheme and your target (e.g. "My Mac") in Xcode, then press **⌘R** to build and run.

Alternatively, build from the command line:

```bash
flutter run -d macos
```

## Common errors

### `could not find included file 'ephemeral/Flutter-Generated.xcconfig'`

Run `flutter pub get` first. This generates the ephemeral build files that Xcode needs.

### `Unable to read contents of XCFileList '.../Pods-Runner-frameworks-...'`

Run `flutter pub get` first (it runs `pod install` automatically). If the error persists, run `pod install` manually inside the `macos/` directory:

```bash
cd macos && pod install
```

### Opening `Runner.xcodeproj` instead of `Runner.xcworkspace`

Always open `Runner.xcworkspace`. The `.xcodeproj` alone does not include the CocoaPods dependencies and will produce build errors.
