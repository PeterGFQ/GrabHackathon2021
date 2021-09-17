//
//  ViewRouter.swift
//  GrabKid (iOS)
//
//  Created by Peter Guo on 17/9/21.
//

import SwiftUI

enum Page {
    case category
    case foodList
    case foodDetail
}

class ViewRouter: ObservableObject {
    @Published var currentPage: Page = .category
}
