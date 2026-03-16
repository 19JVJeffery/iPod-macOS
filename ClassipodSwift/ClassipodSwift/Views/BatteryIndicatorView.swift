import SwiftUI
import IOKit.ps

struct BatteryIndicatorView: View {
    @State private var batteryLevel: Float = 1.0
    @State private var isCharging: Bool = false
    private let timer = Timer.publish(every: 60, on: .main, in: .common).autoconnect()

    var body: some View {
        HStack(spacing: 1) {
            ZStack(alignment: .leading) {
                RoundedRectangle(cornerRadius: 1.5)
                    .stroke(Color(hex: "69696A"), lineWidth: 1)
                    .frame(width: 18, height: 9)
                RoundedRectangle(cornerRadius: 1)
                    .fill(batteryFillColor)
                    .frame(width: max(CGFloat(batteryLevel) * 15, 1), height: 7)
                    .padding(.leading, 1)
            }
            RoundedRectangle(cornerRadius: 1)
                .fill(Color(hex: "69696A"))
                .frame(width: 2, height: 5)
            if isCharging {
                Image(systemName: "bolt.fill")
                    .font(.system(size: 8))
                    .foregroundColor(.yellow)
            }
        }
        .onAppear { updateBattery() }
        .onReceive(timer) { _ in updateBattery() }
    }

    private var batteryFillColor: Color {
        if batteryLevel > 0.5 {
            return Color(hex: "AFCE92")
        } else if batteryLevel > 0.2 {
            return .yellow
        } else {
            return .red
        }
    }

    private func updateBattery() {
        guard let snapshot = IOPSCopyPowerSourcesInfo()?.takeRetainedValue(),
              let sourceRefs = IOPSCopyPowerSourcesList(snapshot)?.takeRetainedValue() as? [CFTypeRef],
              let firstRef = sourceRefs.first,
              let source = IOPSGetPowerSourceDescription(snapshot, firstRef)?.takeUnretainedValue() as? [String: Any] else {
            batteryLevel = 1.0
            isCharging = false
            return
        }
        if let capacity = source[kIOPSCurrentCapacityKey] as? Int,
           let maxCap = source[kIOPSMaxCapacityKey] as? Int, maxCap > 0 {
            batteryLevel = Float(capacity) / Float(maxCap)
        }
        isCharging = (source[kIOPSPowerSourceStateKey] as? String) == kIOPSACPowerValue
    }
}
