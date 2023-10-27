//
//  ContentView.swift
//  LegSounds
//
//  Created by Алексей Никулин on 25.10.2023.
//

import SwiftUI

struct MenuView: View {
    @ObservedObject var randomsound: soundListManager

    var body: some View {
        NavigationView{
            ZStack{
                VStack{
                    Button(action: {PlayerSounds.instance.playSound(list: soundOption(rawValue: "\(randomsound.soundlist)") ?? .razeb)}){
                        HStack{
                            Image(systemName: "speaker.wave.2.fill")
                            Text("RandomSound")
                        }.foregroundColor(.black)
                            .padding(1)
                            .frame(width: 150)
                            .padding(5)
                            .background(.gray)
                            .cornerRadius(25)
                        Spacer()
                    }.padding()
                    HStack{
                        NavigationLink("List Sounds", destination: CategoryView(authorMan: categoryListManager()))
                            .foregroundColor(.black)
                            .padding(1)
                            .frame(width: 150)
                            .padding(5)
                            .background(.gray)
                            .cornerRadius(25)
                        Spacer()
                    }.padding()
                    Spacer()
                }
            }.navigationTitle("Menu")
        }
    }
}

#Preview {
    MenuView(randomsound: soundListManager())
}
