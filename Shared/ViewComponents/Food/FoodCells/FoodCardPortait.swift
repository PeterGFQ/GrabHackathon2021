//
//  FoodCardPortait.swift
//  GrabKid (iOS)
//
//  Created by Peter Guo on 17/9/21.
//

import SwiftUI

struct FoodCardPortait: View {

    @EnvironmentObject var global: Global
    @EnvironmentObject var viewRouter: ViewRouter

    @State var food: Food = Food(id: "", name: "Burger", imageUrl: "grab_food_logo", price: 23.5, description: "")

    var body: some View {
        Button(action: {
            global.currentFood = food
            viewRouter.currentPage = .foodDetail
        }, label: {
            VStack(alignment: .leading,
                   spacing: 8,
                   content: {
                    Image(food.imageUrl)
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
            .foregroundColor(.black)
            .frame(width: 200.0)
        })
    }
}

struct FoodCardPortait_Previews: PreviewProvider {
    static var previews: some View {
        FoodCardPortait()
    }
}
