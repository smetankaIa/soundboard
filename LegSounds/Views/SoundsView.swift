//
//  SoundsView.swift
//  LegSounds
//
//  Created by Алексей Никулин on 25.10.2023.
//

import SwiftUI

struct SoundsView: View {
    @State var names = ""
    @ObservedObject var soundMan: soundListManager
    var columns = [GridItem()]
    var body: some View {
        ZStack{
            VStack{
                HStack{
                    TextField("Search", text: $names)
                        .padding()
                }
                ScrollView(.vertical){
                    LazyVGrid(columns: columns, alignment: .center){
                        ForEach(soundMan.soundlist, id: \.self){
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
            }
        }.navigationTitle("Sounds")
    }
}

#Preview {
    SoundsView(soundMan: soundListManager())
}
