//
//  soundManager.swift
//  LegSounds
//
//  Created by Алексей Никулин on 25.10.2023.
//

import Foundation
class soundListManager: ObservableObject{
    @Published var soundlist: [sounds] = [
        sounds(namesound: "Ёлочка", soundfile: "zahar", author: .Zahar),
        sounds(namesound: "Коричневая Вода", soundfile: "brownwater", author: .Matyew),
        sounds(namesound: "Разъ*б", soundfile: "razeb", author: .Vadim),
        sounds(namesound: "Понимаю...", soundfile: "ponimay", author: .Vadim)
    ]
    
    func filterSoundList(list: [sounds], category: String) -> [sounds] {
        guard category != "All Sounds" else {
            return list
        }
        
        return list.filter { sound in
            return sound.author.rawValue == category
        }
    }
    
}
