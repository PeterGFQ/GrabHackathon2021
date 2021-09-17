//
//  CategoryKidCell.swift
//  GrabKid (iOS)
//
//  Created by Peter Guo on 17/9/21.
//

import SwiftUI

struct CategoryKidCell: View {

    @EnvironmentObject var viewRouter: ViewRouter
    @EnvironmentObject var global: Global
    @State var category: Category

    var body: some View {
        Button(action: {
            global.currentCategory = category
            viewRouter.currentPage = .foodList
        }) {
            VStack(spacing: 10) {
                Image(category.imageUrl)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: 100, maxHeight: 100)
                Text(category.name)
                    .foregroundColor(.black)
                    .font(.system(size: 20, weight: .bold))
                    .multilineTextAlignment(.center)
            }
            .padding()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .aspectRatio(1, contentMode: .fill)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color.green, lineWidth: 0.6))
    }
}

struct CategoryKidCell_Previews: PreviewProvider {
    static var previews: some View {
        CategoryKidCell(category: Category(id: "", name: "1312", imageUrl: "buddy_time"))
    }
}
