//
//  RestaurantListHorizentalScrollView.swift
//  GrabKid (iOS)
//
//  Created by Peter Guo on 17/9/21.
//

import SwiftUI

struct RestaurantListHorizontalScrollView: View {

    var body: some View {
        VStack {
            ScrollView(.horizontal) {
                HStack(spacing: 10) {
                    ForEach(0..<10) { index in
                        RestaurantCellVertical(restaurantName: "This is Restaurant Name \(index)",
                                               rating: "4.\(index)",
                                               deliveryTime: "\(index+1) min",
                                               deliveryDistance: "\(index+1) km")
                    }
                }
            }
        }
        .padding([.leading, .trailing], 16)
    }
}

struct RestaurantListHorizentalScrollView_Previews: PreviewProvider {
    static var previews: some View {
        RestaurantListHorizontalScrollView()
    }
}
