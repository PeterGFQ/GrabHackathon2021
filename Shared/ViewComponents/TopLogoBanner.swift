//
//  TopLogoBanner.swift
//  GrabKid (iOS)
//
//  Created by Peter Guo on 17/9/21.
//

import SwiftUI

struct TopLogoBanner: View {

    @EnvironmentObject var viewRouter: ViewRouter

    var body: some View {
        Button(action: {
            backToPreviousPage()
        }, label: {
            Image("grab_food_logo")
                .resizable()
                .scaledToFit()
                .foregroundColor(Color.green)
                .frame(width: UIScreen.main.bounds.size.width,
                       height: 50,
                       alignment: .leading)
                .padding(.leading, 32)
        })
    }

    func backToPreviousPage() {
        if viewRouter.currentPage == .foodDetail {
            viewRouter.currentPage = .foodList
        } else if viewRouter.currentPage == .foodList {
            viewRouter.currentPage = .category
        }
    }
}

struct TopLogoBanner_Previews: PreviewProvider {
    static var previews: some View {
        TopLogoBanner()
    }
}
