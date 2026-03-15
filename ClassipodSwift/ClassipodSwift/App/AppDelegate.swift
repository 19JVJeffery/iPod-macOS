import AppKit
import SwiftUI

class AppDelegate: NSObject, NSApplicationDelegate {
    var window: NSWindow?
    
    static let deviceWidth: CGFloat = 443.19754
    static let deviceHeight: CGFloat = 728.76343
    static let aspectRatio: CGFloat = deviceWidth / deviceHeight
    
    func applicationDidFinishLaunching(_ notification: Notification) {
        setupWindow()
    }
    
    func applicationShouldTerminateAfterLastWindowClosed(_ sender: NSApplication) -> Bool {
        return true
    }
    
    private func setupWindow() {
        DispatchQueue.main.async {
            guard let window = NSApplication.shared.windows.first else { return }
            self.window = window
            
            let width = Self.deviceWidth
            let height = Self.deviceHeight
            
            window.setContentSize(NSSize(width: width, height: height))
            window.center()
            
            window.titleVisibility = .hidden
            window.titlebarAppearsTransparent = true
            window.isMovableByWindowBackground = true
            window.hasShadow = true
            window.backgroundColor = .clear
            window.isOpaque = false
            
            // Hide standard window buttons
            window.standardWindowButton(.closeButton)?.isHidden = true
            window.standardWindowButton(.miniaturizeButton)?.isHidden = true
            window.standardWindowButton(.zoomButton)?.isHidden = true
            
            // Set min size
            let minWidth: CGFloat = 240
            let minHeight = minWidth / Self.aspectRatio
            window.minSize = NSSize(width: minWidth, height: minHeight)
            
            // Lock aspect ratio
            window.contentAspectRatio = NSSize(width: Self.deviceWidth, height: Self.deviceHeight)
            
            // Apply corner radius
            let cornerRadius = min(width, height) * 0.086206336
            window.contentView?.wantsLayer = true
            window.contentView?.layer?.cornerRadius = cornerRadius
            window.contentView?.layer?.masksToBounds = true
        }
    }
}
