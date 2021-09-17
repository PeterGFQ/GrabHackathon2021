//
//  FoodListVerticalScrollView.swift
//  GrabKid (iOS)
//
//  Created by Peter Guo on 17/9/21.
//

import SwiftUI

struct FoodListVerticalScrollView: View {

    @State var foodList: [Food] = [
        Food(id: "", name: "Food 1", image: "grab_food_logo", price: 42),
        Food(id: "", name: "Food 2", image:"grab_food_logo", price: 1.2),
        Food(id: "", name: "Food 3", image:"grab_food_logo", price: 58.5),
        Food(id: "", name: "Food 4", image:"grab_food_logo", price: 3),
        Food(id: "", name: "Food 5", image:"grab_food_logo", price: 32.2)]

    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(spacing: 32) {
                ForEach(0..<foodList.count) { index in
                    FoodCardLandscape(food: foodList[index])
                }
            }
        }.padding([.leading, .trailing], 8)
    }
}

struct FoodListVerticalScrollView_Previews: PreviewProvider {
    static var previews: some View {
        FoodListVerticalScrollView()
    }
}
