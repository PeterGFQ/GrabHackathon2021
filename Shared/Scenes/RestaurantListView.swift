//
//  RestaurantListView.swift
//  GrabKid (iOS)
//
//  Created by Peter Guo on 17/9/21.
//

import SwiftUI

struct RestaurantListView: View {

    @State private var searchText = ""

    var body: some View {
        VStack(alignment: .center, spacing: 16.0) {

            TopLogoBanner()

            ScrollView(.vertical) {
                SearchBar(text: $searchText)
                    .padding([.leading, .trailing ,.bottom])

                CategoryHorizontalScrollView()

                Text("Popular Near You")
                    .font(.title2)
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity,
                           alignment: .leading)
                    .padding([.top, .leading], 16)

                RestaurantListHorizontalScrollView()

                Text("More Restaurant Near You")
                    .font(.title2)
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity,
                           alignment: .leading)
                    .padding([.top, .leading], 16)

                RestaurantListVerticalScrollView()
            }
        }
    }

}

struct RestaurantList_Previews: PreviewProvider {
    static var previews: some View {
        RestaurantListView()
    }
}
