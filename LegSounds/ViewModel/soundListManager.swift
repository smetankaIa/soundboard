//
//  soundManager.swift
//  LegSounds
//
//  Created by Алексей Никулин on 25.10.2023.
//

import Foundation
class soundListManager: ObservableObject{
    @Published var searchSound: String = "" {
        didSet {
            search()
        }
    }
    
//    var filteredSounds: [sounds]{
//        guard !searchSound.isEmpty else { return soundlist }
//        return soundlist.filter{
//            sound in
//            sound.namesound.lowercased().contains(searchSound.lowercased())
//        }
//    }
    
    @Published var category: String = ""
    
    func search() {
        guard !searchSound.isEmpty && !category.isEmpty else {
            if category == "All Sounds" {
                filterSoundList = soundlist
            } else {
                filterSoundList = soundlist.filter { sound in
                    return sound.author.rawValue == category
                }
            }
            return
        }
        
        if category == "All Sounds" {
            filterSoundList = filterSoundList.filter({ sound in
                return sound.namesound.lowercased().contains(searchSound.lowercased())
            })
        } else {
            filterSoundList = filterSoundList.filter({ sound in
                return sound.namesound.lowercased().contains(searchSound.lowercased()) && sound.author.rawValue == category
            })
        }
    }
    
    let soundlist: [sounds] = [
        sounds(namesound: "Ёлочка", soundfile: "zahar", author: .Zahar),
        sounds(namesound: "Коричневая Вода", soundfile: "brownwater", author: .Matyew),
        sounds(namesound: "Разъ*б", soundfile: "razeb", author: .Vadim),
        sounds(namesound: "Понимаю...", soundfile: "ponimay", author: .Vadim)
    ]
    
    @Published var filterSoundList: [sounds]
    
    init() {
        self.filterSoundList = soundlist
    }
    
    
    func filterSoundList(category: String) {
        self.category = category
        
        guard category != "All Sounds" else {
            return filterSoundList = soundlist
        }
        
        filterSoundList = filterSoundList.filter { sound in
            return sound.author.rawValue == category
        }
        
    }
    
}
