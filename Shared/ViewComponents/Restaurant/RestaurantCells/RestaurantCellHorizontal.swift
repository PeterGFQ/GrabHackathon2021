//
//  FoodCellHorizontal.swift
//  GrabKid (iOS)
//
//  Created by Peter Guo on 17/9/21.
//

import SwiftUI

struct RestaurantCellHorizontal: View {

    @State var restaurantName: String
    @State var tags: String = "Indian, Western, [tags]"
    @State var rating: String
    @State var deliveryTime: String
    @State var deliveryDistance: String

    var body: some View {
        VStack(content: {
            HStack(alignment: .center,
                   spacing: 8,
                   content: {
                    Image(systemName: "clock")
                        .renderingMode(.template)
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(Color.green)
                        .cornerRadius(10)
                        .frame(width: 150,
                               height: 75,
                               alignment: .center)
                        .background(Color.blue)
                        .padding(.trailing, 16)

                    VStack(alignment: .leading, spacing: 8, content: {
                        Text(restaurantName)
                            .font(.title3)
                            .fontWeight(.bold).padding(.bottom, 8)

                        Text(tags)
                            .font(.callout)
                            .fontWeight(.regular)

                        // footer
                        HStack(alignment: .firstTextBaseline,
                               spacing: 4,
                               content: {
                                Image(systemName: "star.fill")
                                    .foregroundColor(.yellow)
                                Text(rating)
                                    .font(.callout)
                                    .fontWeight(.regular)
                                    .padding(.trailing, 8)
                                Image(systemName: "clock")
                                    .foregroundColor(.black)
                                Text(deliveryTime)
                                    .font(.callout)
                                    .fontWeight(.regular)
                                    .padding(.trailing, 4)
                                Text(deliveryDistance)
                                    .font(.callout)
                                    .fontWeight(.regular)
                               })
                    })
                   })
        })
    }
}

struct RestaurantCellHorizontal_Previews: PreviewProvider {
    static var previews: some View {
        RestaurantCellHorizontal(restaurantName: "Restaurant Name hahahhahaahah",
                                 rating: "2.9",
                                 deliveryTime: "23 mins",
                                 deliveryDistance: "3 km")
    }
}
