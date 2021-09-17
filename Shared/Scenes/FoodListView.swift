//
//  FoodListView.swift
//  GrabKid (iOS)
//
//  Created by Peter Guo on 17/9/21.
//

import SwiftUI

struct FoodListView: View {

    @State private var searchText = ""
    @EnvironmentObject var global: Global

    var body: some View {
        VStack(alignment: .center, spacing: 16.0) {

            ScrollView(.vertical) {
                SearchBar(text: $searchText)
                    .padding([.leading, .trailing ,.bottom])

                CategoryKidCell(category: global.currentCategory!)
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/,
                           height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/,
                           alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)

                FoodListHorizentalScrollView()

                Text("More Food Near You")
                    .font(.title2)
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity,
                           alignment: .leading)
                    .padding([.top, .leading], 16)

                FoodListVerticalScrollView()
            }
        }
    }

}

struct FoodListView_Previews: PreviewProvider {
    static var previews: some View {
        FoodListView()
            .environmentObject(Global(currentCategory: Category(id: "", title: "abc", icon: "buddy_time"), currentFood: nil))
    }
}
