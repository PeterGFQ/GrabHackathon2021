//
//  Loading.swift
//  GrabKid (iOS)
//
//  Created by Yuxing Zhao on 17/9/21.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
        LottieView(name: "food_loading", loopMode: .loop)
            .frame(width: .infinity, height: .infinity, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .padding([.leading, .trailing], 10)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView()
    }
}
