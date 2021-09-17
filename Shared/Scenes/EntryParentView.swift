//
//  EntryParentView.swift
//  GrabKid (iOS)
//
//  Created by Peter Guo on 17/9/21.
//

import SwiftUI

struct EntryParentView: View {

    @EnvironmentObject var viewRouter: ViewRouter

    var body: some View {
        switch viewRouter.currentPage {
        case .category:
            CategoryListView()
        case .foodList:
            FoodListView()
        }
    }
}

struct EntryParentView_Previews: PreviewProvider {
    static var previews: some View {
        EntryParentView()
    }
}
