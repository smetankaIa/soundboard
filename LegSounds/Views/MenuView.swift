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
                    Button(action: {
                        let randomSound: soundOption? = soundOption.allCases.randomElement()
                        
                        guard let randomSound else { return }
                        
                        PlayerSounds.instance.playSound(list: randomSound)
                    }){
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
                        NavigationLink("List Sounds", destination: CategoryView())
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
