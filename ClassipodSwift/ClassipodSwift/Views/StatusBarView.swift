import SwiftUI

struct StatusBarView: View {
    let title: String
    @EnvironmentObject var audioPlayer: AudioPlayerService

    var body: some View {
        ZStack {
            // Gradient background
            LinearGradient(
                colors: [Color(hex: "FCFCFC"), Color(hex: "8A8C8B")],
                startPoint: .top,
                endPoint: .bottom
            )

            HStack(spacing: 0) {
                // Title (left)
                Text(title)
                    .font(.system(size: 11, weight: .bold))
                    .foregroundColor(.black)
                    .lineLimit(1)
                    .padding(.leading, 8)

                Spacer()

                // Play/pause indicator (center-right)
                Image(systemName: audioPlayer.isPlaying ? "pause.fill" : "play.fill")
                    .font(.system(size: 9))
                    .foregroundColor(.black.opacity(0.7))

                Spacer().frame(width: 8)

                // Battery indicator (right)
                BatteryIndicatorView()
                    .padding(.trailing, 8)
            }
        }
        .frame(height: 16)
        .overlay(
            Rectangle()
                .frame(height: 0.5)
                .foregroundColor(Color(hex: "71797B")),
            alignment: .bottom
        )
    }
}
