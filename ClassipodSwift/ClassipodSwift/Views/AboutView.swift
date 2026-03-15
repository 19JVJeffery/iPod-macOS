import SwiftUI

struct AboutView: View {
    @EnvironmentObject var vm: AppViewModel

    var body: some View {
        VStack(spacing: 0) {
            iPodTitleBar(title: "About")

            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 16) {
                    // App icon area
                    ZStack {
                        RoundedRectangle(cornerRadius: 18)
                            .fill(
                                LinearGradient(
                                    colors: [Color(hex: "9BA7B4"), Color(hex: "4C5258")],
                                    startPoint: .topLeading,
                                    endPoint: .bottomTrailing
                                )
                            )
                            .frame(width: 64, height: 64)
                        Image(systemName: "music.note")
                            .font(.system(size: 30))
                            .foregroundColor(.white)
                    }
                    .padding(.top, 16)

                    Text("ClassiPod")
                        .font(.system(size: 16, weight: .bold))
                        .foregroundColor(.black)

                    Text("Version 1.0")
                        .font(.system(size: 11))
                        .foregroundColor(.gray)

                    Divider()
                        .padding(.horizontal, 20)

                    VStack(alignment: .leading, spacing: 8) {
                        aboutRow(label: "Platform", value: "macOS")
                        aboutRow(label: "Framework", value: "SwiftUI")
                        aboutRow(label: "Audio", value: "AVFoundation")
                        aboutRow(label: "Style", value: "iPod Classic")
                    }
                    .padding(.horizontal, 16)

                    Divider()
                        .padding(.horizontal, 20)

                    Text("A faithful iPod Classic emulator for macOS. Navigate with the click wheel, browse your music library, and enjoy your tunes in retro style.")
                        .font(.system(size: 10))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 16)

                    Spacer().frame(height: 16)
                }
            }
        }
        .background(Color(hex: "C5D0D8"))
    }

    private func aboutRow(label: String, value: String) -> some View {
        HStack {
            Text(label)
                .font(.system(size: 11, weight: .medium))
                .foregroundColor(.black)
            Spacer()
            Text(value)
                .font(.system(size: 11))
                .foregroundColor(.gray)
        }
    }
}
