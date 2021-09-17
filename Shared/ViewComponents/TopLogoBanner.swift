//
//  TopLogoBanner.swift
//  GrabKid (iOS)
//
//  Created by Peter Guo on 17/9/21.
//

import SwiftUI

struct TopLogoBanner: View {
    var body: some View {
        Image("grab_food_logo")
            .resizable()
            .scaledToFit()
            .foregroundColor(Color.green)
            .frame(width: UIScreen.main.bounds.size.width,
                   height: 50,
                   alignment: .leading)
            .padding(.leading, 32)
    }
}

struct TopLogoBanner_Previews: PreviewProvider {
    static var previews: some View {
        TopLogoBanner()
    }
}
