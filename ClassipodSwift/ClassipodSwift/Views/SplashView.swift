import SwiftUI

struct SplashView: View {
    @EnvironmentObject var vm: AppViewModel
    @State private var showScanning = false
    @State private var opacity: Double = 0
    
    var body: some View {
        ZStack {
            LinearGradient(
                colors: [Color(hex: "9BA7B4"), Color(hex: "4C5258")],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            
            VStack(spacing: 20) {
                // App icon representation
                ZStack {
                    RoundedRectangle(cornerRadius: 22)
                        .fill(Color.white.opacity(0.2))
                        .frame(width: 100, height: 100)
                    
                    Image(systemName: "music.note")
                        .font(.system(size: 50))
                        .foregroundColor(.white)
                }
                
                Text("ClassiPod")
                    .font(.system(size: 24, weight: .bold))
                    .foregroundColor(.white)
                
                if showScanning {
                    HStack(spacing: 8) {
                        ProgressView()
                            .scaleEffect(0.7)
                            .tint(.white)
                        Text("Scanning music files...")
                            .font(.system(size: 12))
                            .foregroundColor(.white.opacity(0.8))
                    }
                    .transition(.opacity)
                }
            }
            .opacity(opacity)
        }
        .onAppear {
            withAnimation(.easeIn(duration: 0.5)) {
                opacity = 1
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                withAnimation {
                    showScanning = true
                }
            }
        }
    }
}
