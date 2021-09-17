//
//  RestaurantListVerticalScrollView.swift
//  GrabKid (iOS)
//
//  Created by Peter Guo on 17/9/21.
//

import SwiftUI

struct RestaurantListVerticalScrollView: View {
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(spacing: 32) {
                ForEach(0..<10) { index in
                    RestaurantCellHorizontal(restaurantName: "This is Restaurant card No \(index)",
                                       rating: "4.\(index)",
                                       deliveryTime: "\(index+1) min",
                                       deliveryDistance: "\(index+1) km")
                }
            }
        }.padding([.leading, .trailing], 8)
    }
}

struct RestaurantListVerticalScrollView_Previews: PreviewProvider {
    static var previews: some View {
        RestaurantListVerticalScrollView()
    }
}
