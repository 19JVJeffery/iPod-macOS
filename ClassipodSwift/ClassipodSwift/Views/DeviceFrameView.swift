import SwiftUI

struct DeviceFrameView: View {
    let geometry: GeometryProxy
    @EnvironmentObject var vm: AppViewModel
    @EnvironmentObject var settings: SettingsService

    var deviceColor: DeviceColorOption { settings.settings.deviceColor }

    var body: some View {
        let w = geometry.size.width
        let h = geometry.size.height
        let scale = min(w / 443.19754, h / 728.76343)

        ZStack {
            // Outer frame gradient
            RoundedRectangle(cornerRadius: 62 * scale)
                .fill(
                    LinearGradient(
                        colors: [
                            Color(hex: deviceColor.frameGradient1),
                            Color(hex: deviceColor.frameGradient2)
                        ],
                        startPoint: .top,
                        endPoint: .bottom
                    )
                )
                .frame(width: w, height: h)
                .shadow(color: .black.opacity(0.45), radius: 24 * scale, x: 0, y: 8 * scale)

            VStack(spacing: 0) {
                // Screen area
                screenArea(scale: scale, w: w)

                Spacer(minLength: 0)

                // Click wheel area
                clickWheelArea(scale: scale, w: w)

                Spacer(minLength: 0)
            }
            .frame(width: w, height: h)
        }
        .frame(width: w, height: h)
        .clipped()
    }

    // MARK: - Screen Area

    private func screenArea(scale: CGFloat, w: CGFloat) -> some View {
        let screenW = 295.0 * scale
        let screenH = 222.0 * scale
        let topPad = 72.0 * scale

        return VStack(spacing: 0) {
            Spacer().frame(height: topPad)
            ZStack {
                // Screen bezel
                RoundedRectangle(cornerRadius: 8 * scale)
                    .fill(Color.black)
                    .frame(width: screenW + 10 * scale, height: screenH + 10 * scale)

                // Screen content
                RoundedRectangle(cornerRadius: 6 * scale)
                    .fill(Color(hex: "B8C4CF"))
                    .frame(width: screenW, height: screenH)
                    .overlay(
                        ScreenView()
                            .environmentObject(vm)
                            .environmentObject(settings)
                            .clipShape(RoundedRectangle(cornerRadius: 6 * scale))
                    )
            }
        }
    }

    // MARK: - Click Wheel Area

    private func clickWheelArea(scale: CGFloat, w: CGFloat) -> some View {
        let wheelDiam = 260.0 * scale
        let bottomPad = 46.0 * scale

        return VStack(spacing: 0) {
            ClickWheelView(diameter: wheelDiam, deviceColor: deviceColor)
                .environmentObject(vm)
                .environmentObject(settings)
            Spacer().frame(height: bottomPad)
        }
    }
}
