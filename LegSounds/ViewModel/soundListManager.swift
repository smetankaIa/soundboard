//
//  soundManager.swift
//  LegSounds
//
//  Created by Алексей Никулин on 25.10.2023.
//

import Foundation
class soundListManager: ObservableObject{
    @Published var soundlist: [sounds] = [
        sounds(namesound: "Ёлочка", soundfile: "zahar", author: "Zahar"),
        sounds(namesound: "Коричневая Вода", soundfile: "brownwater", author: "Matyew"),
        sounds(namesound: "Разъ*б", soundfile: "razeb", author: "Vadim"),
        sounds(namesound: "Понимаю...", soundfile: "ponimay", author: "Vadim"),
        sounds(namesound: "", soundfile: "", author: ""),
        sounds(namesound: "", soundfile: "", author: ""),
        sounds(namesound: "", soundfile: "", author: "")
    ]
    init(){
        
    }
}
