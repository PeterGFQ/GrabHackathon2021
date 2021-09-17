//
//  CartView.swift
//  GrabKid (iOS)
//
//  Created by Peter Guo on 17/9/21.
//

import SwiftUI

struct CartView: View {

    @EnvironmentObject var global: Global
    @EnvironmentObject var viewRouter: ViewRouter

    var body: some View {
        ScrollView{
            ZStack {
                Color(.systemGreen)
                    .frame(width: 500, height: 500)
                    .edgesIgnoringSafeArea(.all)
                    .cornerRadius(300)
                    .padding(.leading, -100)
                    .padding(.top, -250)
                Color(.systemGreen)
                    .frame(width: 300, height: 300)
                    .edgesIgnoringSafeArea(.all)
                    .cornerRadius(300)
                    .padding(.leading, -150)
                    .padding(.top, -120)
                HStack {
                    Text("🍔 Wish List")
                        .bold()
                        .font(.title)
                }
                .padding(.all, 20)
                .foregroundColor(.white)
                .frame(width: UIScreen.main.bounds.width)
                .padding(.top, -80)
                .padding(.leading, -140)
            }
            FoodListVerticalScrollView(foodList: global.wishList ?? [])
            HStack{
                Spacer()
                Button(action: {
                    
                }, label: {
                    Text("Ask mom to pay")
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.vertical, 10)
                        .padding(.horizontal, 100)
                        .background(Color.red)
                        .cornerRadius(10)

                })
                Spacer()
            }
            .padding(.all, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            .edgesIgnoringSafeArea(.all)
            .background(Color.white.edgesIgnoringSafeArea(.all))
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
            .environmentObject(
                Global(wishList: [
                    Food(id: "", name: "xxxxx", imageUrl: "grab_food_logo", price: 0, description: "good good good good good good good good good good good ")
                ])
            )
    }
}
