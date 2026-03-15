import Foundation
import AVFoundation
import Combine

class AudioPlayerService: ObservableObject {
    static let shared = AudioPlayerService()
    
    @Published var isPlaying: Bool = false
    @Published var currentSong: Song? = nil
    @Published var currentTime: TimeInterval = 0
    @Published var duration: TimeInterval = 0
    @Published var volume: Float = 0.8
    @Published var repeatMode: RepeatMode = .off
    @Published var isShuffleEnabled: Bool = false
    @Published var currentIndex: Int = 0
    
    private var player: AVPlayer?
    private var playerItem: AVPlayerItem?
    private var timeObserver: Any?
    private var playlist: [Song] = []
    private var shuffledIndices: [Int] = []
    private var cancellables = Set<AnyCancellable>()
    private var isSeeking = false
    
    init() {
        // Observe settings
        SettingsService.shared.$settings
            .sink { [weak self] settings in
                self?.repeatMode = settings.repeatMode
                self?.isShuffleEnabled = settings.isShuffleEnabled
                self?.volume = 0.8
            }
            .store(in: &cancellables)
    }
    
    func loadPlaylist(_ songs: [Song], startIndex: Int = 0) {
        playlist = songs
        if isShuffleEnabled {
            shufflePlaylist(startingAt: startIndex)
        } else {
            currentIndex = startIndex
        }
        playSong(at: currentIndex)
    }
    
    func play() {
        player?.play()
        isPlaying = true
    }
    
    func pause() {
        player?.pause()
        isPlaying = false
    }
    
    func togglePlayPause() {
        if isPlaying { pause() } else { play() }
    }
    
    func next() {
        let indices = isShuffleEnabled ? shuffledIndices : Array(playlist.indices)
        guard !indices.isEmpty else { return }
        
        let pos = indices.firstIndex(of: currentIndex) ?? 0
        if pos + 1 < indices.count {
            currentIndex = indices[pos + 1]
            playSong(at: currentIndex)
        } else if repeatMode == .all {
            currentIndex = indices[0]
            playSong(at: currentIndex)
        }
    }
    
    func previous() {
        if currentTime > 3 {
            seek(to: 0)
            return
        }
        let indices = isShuffleEnabled ? shuffledIndices : Array(playlist.indices)
        guard !indices.isEmpty else { return }
        
        let pos = indices.firstIndex(of: currentIndex) ?? 0
        if pos > 0 {
            currentIndex = indices[pos - 1]
            playSong(at: currentIndex)
        } else if repeatMode == .all {
            currentIndex = indices[indices.count - 1]
            playSong(at: currentIndex)
        } else {
            seek(to: 0)
        }
    }
    
    func seek(to time: TimeInterval) {
        let cmTime = CMTime(seconds: time, preferredTimescale: 600)
        player?.seek(to: cmTime, toleranceBefore: .zero, toleranceAfter: .zero)
        currentTime = time
    }
    
    func setVolume(_ v: Float) {
        volume = v
        player?.volume = v
    }
    
    func toggleShuffle() {
        isShuffleEnabled.toggle()
        SettingsService.shared.settings.isShuffleEnabled = isShuffleEnabled
        if isShuffleEnabled {
            shufflePlaylist(startingAt: currentIndex)
        }
    }
    
    func setRepeatMode(_ mode: RepeatMode) {
        repeatMode = mode
        SettingsService.shared.settings.repeatMode = mode
    }
    
    private func shufflePlaylist(startingAt index: Int) {
        var indices = Array(playlist.indices)
        indices.removeAll { $0 == index }
        indices.shuffle()
        shuffledIndices = [index] + indices
    }
    
    private func playSong(at index: Int) {
        guard index >= 0, index < playlist.count else { return }
        
        let song = playlist[index]
        currentSong = song
        duration = song.duration
        currentTime = 0
        
        removeTimeObserver()
        
        let item = AVPlayerItem(url: song.url)
        playerItem = item
        
        if player == nil {
            player = AVPlayer(playerItem: item)
        } else {
            player?.replaceCurrentItem(with: item)
        }
        
        player?.volume = volume
        
        // Add time observer
        let interval = CMTime(seconds: 0.5, preferredTimescale: 600)
        timeObserver = player?.addPeriodicTimeObserver(forInterval: interval, queue: .main) { [weak self] time in
            guard let self = self, !self.isSeeking else { return }
            self.currentTime = CMTimeGetSeconds(time)
        }
        
        // Observe end of item
        NotificationCenter.default.removeObserver(self, name: .AVPlayerItemDidPlayToEndTime, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(playerItemDidEnd), name: .AVPlayerItemDidPlayToEndTime, object: item)
        
        if isPlaying {
            player?.play()
        } else {
            isPlaying = true
            player?.play()
        }
    }
    
    @objc private func playerItemDidEnd() {
        DispatchQueue.main.async { [weak self] in
            guard let self = self else { return }
            switch self.repeatMode {
            case .one:
                self.seek(to: 0)
                self.play()
            case .all, .off:
                self.next()
            }
        }
    }
    
    private func removeTimeObserver() {
        if let observer = timeObserver {
            player?.removeTimeObserver(observer)
            timeObserver = nil
        }
    }
    
    deinit {
        removeTimeObserver()
    }
    
    var currentTrackPosition: String {
        guard !playlist.isEmpty else { return "" }
        return "\(currentIndex + 1) of \(playlist.count)"
    }
}
