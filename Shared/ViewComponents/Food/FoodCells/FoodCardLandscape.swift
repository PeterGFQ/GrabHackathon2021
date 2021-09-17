//
//  FoodCardLandscape.swift
//  GrabKid (iOS)
//
//  Created by Peter Guo on 17/9/21.
//

import SwiftUI

struct FoodCardLandscape: View {

    @State var food: Food = Food(id: "", name: "Burger", image: "grab_food_logo", price: 23.5, description: "")

    var body: some View {
//        VStack(content: {
            HStack(alignment: .center,
                   spacing: 8,
                   content: {
                    Image(food.image)
                        .renderingMode(.original)
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(10)
                        .frame(width: 150,
                               height: 100,
                               alignment: .center)
                        .padding([.leading,.trailing], 16)

                    VStack(alignment: .leading, spacing: 8, content: {
                        Text(food.name)
                            .font(.body)
                            .padding(.bottom, 8)
                        Text("\(food.price)")
                            .font(.body)
                            .fontWeight(.bold)

                    }).padding(.trailing, 16)
                    Spacer()
                   })
//        })
    }
}

struct FoodCardLandscape_Previews: PreviewProvider {
    static var previews: some View {
        FoodCardLandscape()
    }
}
