//
//  FoodCardPortait.swift
//  GrabKid (iOS)
//
//  Created by Peter Guo on 17/9/21.
//

import SwiftUI

struct FoodCardPortait: View {

    @State var food: Food = Food(id: "", name: "Burger", image: "grab_food_logo", price: 23.5, description: "")

    var body: some View {
        VStack(alignment: .leading,
               spacing: 8,
               content: {
                Image(food.image)
                    .renderingMode(.original)
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(10)
                    .frame(width: 200,
                           height: 100,
                           alignment: .center)

                Text(food.name)
                    .font(.body)
                    .padding(.bottom, 8)

                Text("\(food.price)")
                    .font(.body)
                    .fontWeight(.bold)
               }
        )
        .frame(width: 200.0)
    }
}

struct FoodCardPortait_Previews: PreviewProvider {
    static var previews: some View {
        FoodCardPortait()
    }
}
