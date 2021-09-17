//
//  CartView.swift
//  GrabKid (iOS)
//
//  Created by Peter Guo on 17/9/21.
//

import SwiftUI

struct CartView: View {

    var body: some View {
        ScrollView{
            ZStack {
                Color(.green)
                    .frame(width: 600, height: 600)
                    .edgesIgnoringSafeArea(.all)
                    .cornerRadius(300)
                    .offset(x: -50, y: -350)
                Color(.green)
                    .frame(width: 300, height: 300)
                    .edgesIgnoringSafeArea(.all)
                    .cornerRadius(300)
                    .offset(x: -100, y: -250)
                HStack {
                    Text("🍔 Wish List")
                        .bold()
                        .font(.title)
                }
                .padding(.all, 20)
                .foregroundColor(.white)
                .frame(width: UIScreen.main.bounds.width)
                .padding(.top, -250)
            }

            Text("Work in progress")
                .bold()
                .font(.title)

            Spacer()
        }

        .edgesIgnoringSafeArea(.all)
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
    }
}
