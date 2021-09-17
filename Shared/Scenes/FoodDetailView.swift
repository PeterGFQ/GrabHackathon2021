//
//  FoodDetailView.swift
//  GrabKid (iOS)
//
//  Created by Peter Guo on 17/9/21.
//

import SwiftUI

struct FoodDetailView: View {

    @EnvironmentObject var global: Global
    
    var body: some View {
        VStack(alignment: .center, spacing: 16.0) {
            Text(global.currentFood!.name)
            Spacer()
        }
    }
}

struct FoodDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FoodDetailView()
            .environmentObject(Global(currentFood: Food(id: "", name: "xxxxx", image: "", price: 0, description: nil)))
    }
}
