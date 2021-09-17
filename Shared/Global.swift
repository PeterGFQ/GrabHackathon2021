//
//  Global.swift
//  GrabKid (iOS)
//
//  Created by Peter Guo on 17/9/21.
//

import SwiftUI

class Global: ObservableObject {

    // for convenience purpose. 
    @Published var currentCategory: Category? = nil
    @Published var currentFood: Food? = nil
    @Published var wishList: [Food]? = nil

    init(currentCategory: Category? = nil,
         currentFood: Food? = nil,
         wishList: [Food]? = nil) {
        self.currentCategory = currentCategory
        self.currentFood = currentFood
        self.wishList = wishList
    }
}

