//
//  SoundsView.swift
//  LegSounds
//
//  Created by Алексей Никулин on 25.10.2023.
//

import SwiftUI

struct SoundsView: View {
    @ObservedObject var soundMan: soundListManager
    var columns = [GridItem()]
    
    let category: String
    
    var body: some View {
        ZStack{
            VStack{
                ScrollView(.vertical){
                    LazyVGrid(columns: columns, alignment: .center){
                        ForEach(soundMan.filterSoundList, id: \.self){
                            sou in VStack{
                                Button(action: {PlayerSounds.instance.playSound(list: soundOption(rawValue: "\(sou.soundfile)") ?? .razeb)}){
                                    HStack{
                                        Image(systemName: "volume")
                                        Text(sou.namesound)
                                    }.foregroundColor(.black)
                                        .padding()
                                    Spacer()
                                }
                            }
                        }
                    }
                }
                .searchable(text: $soundMan.searchSound)
            }
        }.navigationTitle("Sounds")
            .onAppear(perform: {
                soundMan.filterSoundList(category: category)
            })
            .onDisappear(perform: {
                soundMan.category = ""
            })
    }
}

#Preview {
    SoundsView(soundMan: soundListManager(), category: "All sounds")
}
