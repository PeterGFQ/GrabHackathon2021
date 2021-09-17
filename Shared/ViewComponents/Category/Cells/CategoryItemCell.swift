//
//  CategoryItemCell.swift
//  GrabKid (iOS)
//
//  Created by Peter Guo on 17/9/21.
//

import SwiftUI

struct CategoryItemCell: View {

    @State var categoryTitle: String

    var body: some View {
        VStack {
            Image(systemName: "magnifyingglass")
                .renderingMode(.template)
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fit)
                .foregroundColor(Color.green)
                .cornerRadius(10)
                .frame(width: 150,
                       height: 100,
                       alignment: .center)
                .background(Color.black)
                .opacity(0.6)
                .overlay(Text(categoryTitle)
                            .foregroundColor(.white)
                            .bold()
                            .shadow(color: .black, radius: 2, x: 2, y: 2),
                         alignment: .center)
        }
    }
}

struct CategoryItemCell_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItemCell(categoryTitle: "$0 Delivery Fee")
    }
}
