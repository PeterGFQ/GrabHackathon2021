//
//  Category.swift
//  GrabKid (iOS)
//
//  Created by Peter Guo on 17/9/21.
//

import SwiftUI

struct CategoryHorizontalScrollView: View {
    var body: some View {
        VStack {
            ScrollView(.horizontal) {
                HStack(spacing: 10) {
                    ForEach(0..<6) { index in
                        CategoryItemCell(categoryTitle: "Category \(index)")
                    }
                }
            }.frame(height: 100)
        }
        .padding([.leading, .trailing], 16)
    }
}

struct Category_Previews: PreviewProvider {
    static var previews: some View {
        CategoryHorizontalScrollView()
    }
}
