//
//  FoodDetailView.swift
//  GrabKid (iOS)
//
//  Created by Peter Guo on 17/9/21.
//

import SwiftUI

struct FoodDetailView: View {

    @EnvironmentObject var global: Global
    @EnvironmentObject var viewRouter: ViewRouter

    @State var heart = "heart.fill"

    var body: some View {
        VStack {
            ScrollView(.vertical, showsIndicators: false, content: {
                GeometryReader{reader in
                    Image(global.currentFood!.imageUrl)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .offset(y: -reader.frame(in: .global).minY)
                        // going to add parallax effect....
                        .frame(width: UIScreen.main.bounds.width, height:  reader.frame(in: .global).minY + 300)

                }
                .frame(height: 280)

                VStack(alignment: .leading,spacing: 15){

                    Text(global.currentFood!.name)
                        .font(.system(size: 35, weight: .bold))

                    HStack(spacing: 10){
                        ForEach(0..<5){_ in
                            Image(systemName: "star.fill")
                                .foregroundColor(.yellow)
                        }
                    }

                    //                    HStack {
                    //                        Spacer()
                    //
                    //                        Button(action: {
                    //                            withAnimation(.spring(dampingFraction: 0.5)) {
                    //                                heart = "heart"
                    //                            }
                    //                        }, label: {
                    //                            Image(systemName: heart)
                    //                                .font(.largeTitle)
                    //                                .foregroundColor(.red)
                    //
                    //                        })
                    //                        .padding(.all, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    //                    }


                    Text("Description")
                        .font(.system(size: 25, weight: .bold))

                    Text(global.currentFood?.description ?? "")
                        .padding(.top, 10)
                        .fixedSize(horizontal: false, vertical: true)

                    HStack {
                        Text("Price ")
                            .font(.title3)
                            .bold()
                        Spacer()
                        Text("$\(global.currentFood!.price)")
                            .font(.title2)
                            .bold()
                    }
                    .padding(.top, 10)
                }
                .padding(.top, 25)
                .padding(.horizontal)
                .background(Color.white)
                .cornerRadius(20)
                .offset(y: -35)
            })


            Spacer()

            HStack{
                Spacer()
                Button(action: {
                    if let currentFood = global.currentFood {
                        if let food = (global.wishList?.filter({ $0.name == currentFood.name })),
                           food.isEmpty {
                            global.wishList?.append(global.currentFood!)
                        }
                    }
                    viewRouter.currentPage = .cart
                }, label: {
                    Text("I want it")
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
    }

}

struct FoodDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FoodDetailView()
            .environmentObject(Global(currentFood: Food(id: "", name: "xxxxx", imageUrl: "grab_food_logo", price: 0, description: "good good good good good good good good good good good ")))
    }
}
