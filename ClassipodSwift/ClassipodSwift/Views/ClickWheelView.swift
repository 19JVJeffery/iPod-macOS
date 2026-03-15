import SwiftUI
import AppKit

struct ClickWheelView: View {
    let diameter: CGFloat
    let deviceColor: DeviceColorOption

    @EnvironmentObject var vm: AppViewModel
    @EnvironmentObject var settings: SettingsService

    // Gesture state
    @State private var lastAngle: Double? = nil
    @State private var accumulatedDelta: Double = 0

    private var outerRadius: CGFloat { diameter / 2 }
    private var innerRadius: CGFloat { diameter * 0.36 }
    private var centerRadius: CGFloat { diameter * 0.195 }

    var body: some View {
        ZStack {
            // Outer ring (click wheel track)
            wheelBackground

            // Cardinal button labels
            cardinalLabels

            // Center select button
            centerButton
        }
        .frame(width: diameter, height: diameter)
        .gesture(
            DragGesture(minimumDistance: 0)
                .onChanged { value in
                    handleDrag(value: value)
                }
                .onEnded { _ in
                    lastAngle = nil
                    accumulatedDelta = 0
                }
        )
        .simultaneousGesture(
            TapGesture()
                .onEnded {
                    // Tap on outer ring: determine quadrant
                }
        )
        .onTapGesture { location in
            handleTap(at: location)
        }
    }

    // MARK: - Subviews

    private var wheelBackground: some View {
        ZStack {
            Circle()
                .fill(
                    LinearGradient(
                        colors: [
                            Color(hex: deviceColor.innerButtonGradient1),
                            Color(hex: deviceColor.innerButtonGradient2)
                        ],
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    )
                )
                .frame(width: diameter, height: diameter)
                .overlay(
                    Circle()
                        .strokeBorder(Color(hex: deviceColor.controlBorderHex), lineWidth: 2)
                )

            // Cutout for inner area
            Circle()
                .fill(Color(hex: deviceColor.controlBackgroundHex))
                .frame(width: innerRadius * 2, height: innerRadius * 2)
        }
    }

    private var cardinalLabels: some View {
        ZStack {
            let accent = Color(hex: deviceColor.buttonAccentHex)
            let labelOffset = outerRadius * 0.62

            // MENU (top)
            Text("MENU")
                .font(.system(size: diameter * 0.075, weight: .bold))
                .foregroundColor(accent)
                .offset(y: -labelOffset)

            // Forward/next (right)
            Image(systemName: "forward.fill")
                .font(.system(size: diameter * 0.09))
                .foregroundColor(accent)
                .offset(x: labelOffset)

            // Back/prev (left)
            Image(systemName: "backward.fill")
                .font(.system(size: diameter * 0.09))
                .foregroundColor(accent)
                .offset(x: -labelOffset)

            // Play/pause (bottom)
            Image(systemName: "playpause.fill")
                .font(.system(size: diameter * 0.09))
                .foregroundColor(accent)
                .offset(y: labelOffset)
        }
    }

    private var centerButton: some View {
        Circle()
            .fill(
                LinearGradient(
                    colors: [
                        Color(hex: deviceColor.innerButtonGradient1).opacity(0.9),
                        Color(hex: deviceColor.controlBackgroundHex)
                    ],
                    startPoint: .top,
                    endPoint: .bottom
                )
            )
            .frame(width: centerRadius * 2, height: centerRadius * 2)
            .overlay(
                Circle()
                    .strokeBorder(Color(hex: deviceColor.controlBorderHex).opacity(0.5), lineWidth: 1)
            )
            .onTapGesture {
                vm.selectCurrent()
            }
    }

    // MARK: - Gesture Handling

    private func handleDrag(value: DragGesture.Value) {
        let center = CGPoint(x: diameter / 2, y: diameter / 2)
        let location = value.location

        let dx = location.x - center.x
        let dy = location.y - center.y
        let dist = sqrt(dx * dx + dy * dy)

        // Only respond to touches in the ring zone
        guard dist > innerRadius, dist <= outerRadius else {
            lastAngle = nil
            return
        }

        let angle = atan2(dy, dx) * 180 / .pi

        if let last = lastAngle {
            var delta = angle - last
            // Handle wrap-around
            if delta > 180 { delta -= 360 }
            if delta < -180 { delta += 360 }

            accumulatedDelta += delta

            let smallThreshold = settings.settings.clickWheelSensitivity.smallThreshold

            // Throttle scroll events
            if abs(accumulatedDelta) >= smallThreshold {
                let steps = Int(accumulatedDelta / smallThreshold)
                for _ in 0..<abs(steps) {
                    if steps > 0 {
                        vm.scrollDown()
                    } else {
                        vm.scrollUp()
                    }
                }
                accumulatedDelta -= Double(steps) * smallThreshold
            }
        }

        lastAngle = angle
    }

    private func handleTap(at location: CGPoint) {
        let center = CGPoint(x: diameter / 2, y: diameter / 2)
        let dx = location.x - center.x
        let dy = location.y - center.y
        let dist = sqrt(dx * dx + dy * dy)

        if dist <= centerRadius {
            vm.selectCurrent()
            return
        }

        guard dist > innerRadius, dist <= outerRadius else { return }

        let angle = atan2(dy, dx) * 180 / .pi

        // Determine cardinal quadrant: top=MENU, right=next, bottom=play/pause, left=prev
        if angle > -135 && angle <= -45 {
            // Top — MENU
            vm.menuButtonPressed()
        } else if angle > -45 && angle <= 45 {
            // Right — Next
            AudioPlayerService.shared.next()
        } else if angle > 45 && angle <= 135 {
            // Bottom — Play/Pause
            AudioPlayerService.shared.togglePlayPause()
        } else {
            // Left — Previous
            AudioPlayerService.shared.previous()
        }
    }
}
