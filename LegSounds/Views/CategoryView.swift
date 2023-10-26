//
//  CategoryView.swift
//  LegSounds
//
//  Created by Алексей Никулин on 25.10.2023.
//

import SwiftUI

struct CategoryView: View {
    var body: some View {
        ZStack{
            Form{
                NavigationLink(destination: SoundsView(soundMan: soundListManager())){
                    Text("All Sounds")
                }
            }
        }.navigationBarTitle("Menu")

    }
}

#Preview {
    CategoryView()
}
