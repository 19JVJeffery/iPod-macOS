import Cocoa
import FlutterMacOS

class MainFlutterWindow: NSWindow, NSWindowDelegate {
  override func awakeFromNib() {
    let flutterViewController = FlutterViewController()
    let windowFrame = self.frame
    self.contentViewController = flutterViewController
    self.setFrame(windowFrame, display: true)

    configureWindowAppearance()
    configureWindowSizing()
    registerWindowControlsChannel(viewController: flutterViewController)

    RegisterGeneratedPlugins(registry: flutterViewController)

    delegate = self

    super.awakeFromNib()
  }

  private func configureWindowAppearance() {
    titleVisibility = .hidden
    titlebarAppearsTransparent = true
    isMovableByWindowBackground = true

    var styleMask = self.styleMask
    styleMask.insert([
      .fullSizeContentView,
      .resizable,
      .miniaturizable,
      .closable,
    ])
    self.styleMask = styleMask

    standardWindowButton(.closeButton)?.isHidden = true
    standardWindowButton(.miniaturizeButton)?.isHidden = true
    standardWindowButton(.zoomButton)?.isHidden = true

    backgroundColor = .clear
    isOpaque = false
    hasShadow = true

    if let contentView = contentView {
      contentView.wantsLayer = true
      updateCornerRadius()
      if #available(macOS 11.0, *) {
        contentView.layer?.cornerCurve = .continuous
      }
      contentView.layer?.masksToBounds = true
    }
  }

  private func configureWindowSizing() {
    let baseSize = NSSize(width: 443.19754, height: 728.76343)
    let aspectRatio = baseSize.width / baseSize.height

    let minWidth: CGFloat = 240
    let minSize = NSSize(width: minWidth, height: minWidth / aspectRatio)

    let maxSize = maxSizeForScreen(
      aspectRatio: aspectRatio,
      fallback: NSSize(width: 860, height: 1480)
    )

    let initialSize = NSSize(
      width: min(baseSize.width, maxSize.width),
      height: min(baseSize.height, maxSize.height)
    )

    setContentSize(initialSize)
    contentAspectRatio = baseSize
    self.minSize = minSize
    self.maxSize = maxSize
  }

  private func updateCornerRadius() {
    guard let contentView = contentView else { return }
    let radius = min(frame.size.width, frame.size.height) * 0.086206336
    contentView.layer?.cornerRadius = radius
  }

  func windowDidResize(_ notification: Notification) {
    updateCornerRadius()
  }

  private func maxSizeForScreen(
    aspectRatio: CGFloat,
    fallback: NSSize
  ) -> NSSize {
    guard let visibleFrame = screen?.visibleFrame else {
      return fallback
    }

    let availableWidth = visibleFrame.width * 0.9
    let availableHeight = visibleFrame.height * 0.9

    let widthFromHeight = availableHeight * aspectRatio
    let heightFromWidth = availableWidth / aspectRatio

    if widthFromHeight <= availableWidth {
      return NSSize(width: widthFromHeight, height: availableHeight)
    }

    return NSSize(width: availableWidth, height: heightFromWidth)
  }

  private func registerWindowControlsChannel(
    viewController: FlutterViewController
  ) {
    let channel = FlutterMethodChannel(
      name: "classipod/window_controls",
      binaryMessenger: viewController.engine.binaryMessenger
    )

    channel.setMethodCallHandler { [weak self] call, result in
      guard let self = self else {
        result(
          FlutterError(
            code: "NO_WINDOW",
            message: "Window unavailable",
            details: nil
          )
        )
        return
      }

      switch call.method {
      case "close":
        self.performClose(nil)
        result(nil)
      case "minimize":
        self.performMiniaturize(nil)
        result(nil)
      case "zoom":
        self.performZoom(nil)
        result(nil)
      default:
        result(FlutterMethodNotImplemented)
      }
    }
  }
}
