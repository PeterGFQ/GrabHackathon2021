//
//  RestaurantCellVertical.swift
//  GrabKid (iOS)
//
//  Created by Peter Guo on 17/9/21.
//

import SwiftUI

struct RestaurantCellVertical: View {

    @State var restaurantName: String
    @State var tags: String = "Western, Halal, [tags]"
    @State var rating: String
    @State var deliveryTime: String
    @State var deliveryDistance: String

    var body: some View {
        VStack(alignment: .leading,
               spacing: 8,
               content: {
                Image(systemName: "star")
                    .renderingMode(.template)
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(Color.green)
                    .cornerRadius(10)
                    .frame(width: 200,
                           height: 100,
                           alignment: .center)
                    .background(Color.yellow)

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
            .frame(width: 200.0)
    }
}

struct RestaurantCellVertical_Previews: PreviewProvider {
    static var previews: some View {
        RestaurantCellVertical(restaurantName: "Restaurant Name",
                               rating: "2",
                               deliveryTime: "23 mins",
                               deliveryDistance: "3 km")
    }
}
