//
//  PlayerSounds.swift
//  LegSounds
//
//  Created by Алексей Никулин on 25.10.2023.
//

import Foundation
import AVKit
class PlayerSounds {
    static let instance = PlayerSounds()
    var player: AVAudioPlayer?
    func playSound(list: soundOption) {
        guard let url = Bundle.main.url(forResource: list.rawValue, withExtension:".mp3") else { return }
        do
        {
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
        }
        catch let error {
        print ("Error playing sound.\(error.localizedDescription)")
        }
    }
    init(player: AVAudioPlayer? = nil) {
        self.player = player
    }
}
