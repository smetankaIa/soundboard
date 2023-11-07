//
//  CategoryView.swift
//  LegSounds
//
//  Created by Алексей Никулин on 25.10.2023.
//

import SwiftUI

struct CategoryView: View {
    let categoryname: [String] = ["All Sounds", "Vadim", "Zahar", "Yasha", "Matyew", "Roma", "Vlad", "Sosnov", "Alex"]
    
    
    var body: some View {
        ZStack{
            Form{
                ForEach(categoryname, id: \.self){ category in
                    VStack{
                        NavigationLink(destination: SoundsView(soundMan: soundListManager(), category: category)) {
                            Text("\(category)")

                        }
                    }
                }
            }
        }.navigationBarTitle("Menu")

    }
}

#Preview {
    NavigationView {
        CategoryView()
    }
}
