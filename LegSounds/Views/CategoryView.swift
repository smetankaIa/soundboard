//
//  CategoryView.swift
//  LegSounds
//
//  Created by Алексей Никулин on 25.10.2023.
//

import SwiftUI

struct CategoryView: View {
    @ObservedObject var authorMan: categoryListManager
    var body: some View {
        ZStack{
            Form{
                ForEach(authorMan.categrylist, id: \.self){ aut in
                    VStack{
                        NavigationLink(destination: SoundsView(soundMan: soundListManager())) {
                            Text("\(aut.categoryname)")

                        }
                    }
                }
            }
        }.navigationBarTitle("Menu")

    }
}

#Preview {
    CategoryView(authorMan: categoryListManager())
}
