import AppKit
import SwiftUI

class AppDelegate: NSObject, NSApplicationDelegate {
    var window: NSWindow?
    private var trackingArea: NSTrackingArea?

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
            window.styleMask.insert(.resizable)

            // Hide standard window buttons initially
            window.standardWindowButton(.closeButton)?.alphaValue = 0
            window.standardWindowButton(.miniaturizeButton)?.alphaValue = 0
            window.standardWindowButton(.zoomButton)?.alphaValue = 0

            // Reposition traffic light buttons to top-left corner
            if let closeButton = window.standardWindowButton(.closeButton),
               let miniaturizeButton = window.standardWindowButton(.miniaturizeButton),
               let zoomButton = window.standardWindowButton(.zoomButton) {
                let buttonY = height - 22
                closeButton.setFrameOrigin(NSPoint(x: 12, y: buttonY))
                miniaturizeButton.setFrameOrigin(NSPoint(x: 32, y: buttonY))
                zoomButton.setFrameOrigin(NSPoint(x: 52, y: buttonY))
            }

            // Min size
            let minWidth: CGFloat = 240
            let minHeight = minWidth / Self.aspectRatio
            window.minSize = NSSize(width: minWidth, height: minHeight)

            // Aspect ratio lock
            window.contentAspectRatio = NSSize(width: Self.deviceWidth, height: Self.deviceHeight)

            // Corner radius
            let cornerRadius = min(width, height) * 0.086206336
            window.contentView?.wantsLayer = true
            window.contentView?.layer?.cornerRadius = cornerRadius
            window.contentView?.layer?.masksToBounds = true

            // Mouse tracking for showing/hiding traffic light buttons
            self.setupMouseTracking(for: window)
        }
    }

    private func setupMouseTracking(for window: NSWindow) {
        guard let contentView = window.contentView else { return }
        let trackingArea = NSTrackingArea(
            rect: contentView.bounds,
            options: [.mouseEnteredAndExited, .activeAlways, .inVisibleRect],
            owner: self,
            userInfo: nil
        )
        contentView.addTrackingArea(trackingArea)
        self.trackingArea = trackingArea
    }

    override func mouseEntered(with event: NSEvent) {
        showWindowControls(true)
    }

    override func mouseExited(with event: NSEvent) {
        showWindowControls(false)
    }

    private func showWindowControls(_ show: Bool) {
        guard let window = window else { return }
        let alpha: CGFloat = show ? 1.0 : 0.0
        NSAnimationContext.runAnimationGroup { ctx in
            ctx.duration = 0.15
            window.standardWindowButton(.closeButton)?.animator().alphaValue = alpha
            window.standardWindowButton(.miniaturizeButton)?.animator().alphaValue = alpha
            window.standardWindowButton(.zoomButton)?.animator().alphaValue = alpha
        }
    }
}
