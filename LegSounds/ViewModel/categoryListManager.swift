//
//  categoryListManager.swift
//  LegSounds
//
//  Created by Алексей Никулин on 27.10.2023.
//

import Foundation
class categorListManager: ObservableObject{
    @Published var categrylist: [categoryModel] = [
        categoryModel(categotyname: "All Sounds"),
        categoryModel(categotyname: "Zahar"),
        categoryModel(categotyname: "Vadim"),
        categoryModel(categotyname: "Matyew"),
        categoryModel(categotyname: "Sosnov"),
        categoryModel(categotyname: "Roma"),
        categoryModel(categotyname: "Yasha"),
        categoryModel(categotyname: "Vlad"),
        categoryModel(categotyname: "Alex")
    ]
    init(){
    }
}

