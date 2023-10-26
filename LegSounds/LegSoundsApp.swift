//
//  LegSoundsApp.swift
//  LegSounds
//
//  Created by Алексей Никулин on 25.10.2023.
//

import SwiftUI

@main
struct LegSoundsApp: App {
    @StateObject var soundmanager = soundListManager()
    var body: some Scene {
        WindowGroup {
            MenuView(randomsound: soundListManager())
        }
    }
}
