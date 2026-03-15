import SwiftUI

struct DeviceColorSelectionView: View {
    let selectedIndex: Int
    @EnvironmentObject var vm: AppViewModel
    @EnvironmentObject var settings: SettingsService

    private let colors = DeviceColorOption.allCases

    var body: some View {
        VStack(spacing: 0) {
            iPodTitleBar(title: "Device Color")

            ScrollViewReader { proxy in
                ScrollView(.vertical, showsIndicators: false) {
                    LazyVStack(spacing: 0) {
                        ForEach(Array(colors.enumerated()), id: \.element.rawValue) { idx, color in
                            colorRow(idx: idx, color: color)
                                .id(idx)
                                .onTapGesture {
                                    settings.settings.deviceColor = color
                                }
                        }
                    }
                }
                .onChange(of: selectedIndex) { val in
                    withAnimation { proxy.scrollTo(val, anchor: .center) }
                    // Auto-select on navigation
                    if val < colors.count {
                        settings.settings.deviceColor = colors[val]
                    }
                }
            }
        }
        .background(Color(hex: "C5D0D8"))
    }

    private func colorRow(idx: Int, color: DeviceColorOption) -> some View {
        let isSelected = idx == selectedIndex
        let isCurrent = settings.settings.deviceColor == color

        return HStack(spacing: 10) {
            // Color swatch
            Circle()
                .fill(
                    LinearGradient(
                        colors: [Color(hex: color.frameGradient1), Color(hex: color.frameGradient2)],
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    )
                )
                .frame(width: 20, height: 20)
                .overlay(
                    Circle().strokeBorder(Color.black.opacity(0.2), lineWidth: 1)
                )

            Text(color.displayName)
                .font(.system(size: 12))
                .foregroundColor(isSelected ? .white : .black)

            Spacer()

            if isCurrent {
                Image(systemName: "checkmark")
                    .font(.system(size: 11, weight: .bold))
                    .foregroundColor(isSelected ? .white : Color(hex: "3A6EBB"))
            }
        }
        .padding(.horizontal, 12)
        .padding(.vertical, 5)
        .background(
            isSelected
                ? LinearGradient(colors: [Color(hex: "3A6EBB"), Color(hex: "1C4A8A")], startPoint: .top, endPoint: .bottom)
                : LinearGradient(colors: [Color(hex: "C5D0D8"), Color(hex: "C5D0D8")], startPoint: .top, endPoint: .bottom)
        )
        .contentShape(Rectangle())
        Divider().opacity(0.3)
    }
}
