//
//  CategoryListView.swift
//  GrabKid (iOS)
//
//  Created by Peter Guo on 17/9/21.
//

import SwiftUI

struct CategoryListView: View {

    @EnvironmentObject var viewRouter: ViewRouter

    private let columns = [
        GridItem(.flexible(), spacing: 20),
        GridItem(.flexible(), spacing: 20)
    ]

    var body: some View {
        ScrollView {
            Text("Select a food category")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color.green)
            LazyVGrid(columns: columns, spacing: 30) {
                ForEach(0..<10) { index in
                    CategoryKidCell(category: Category(id: "", title: "\(index)", icon: "buddy_time"))
                }
            }

            .padding(.horizontal)
            .padding()
        }
    }
}

struct CategoryListView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryListView()
    }
}
