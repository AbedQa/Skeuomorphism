//
//  Home.swift
//  Skeuomorphism
//
//  Created by AbdelrahmanQasim on 1/17/22.
//

import SwiftUI

struct Home: View {
    var size = UIScreen.main.bounds
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                HeaderView()
                    .padding(.horizontal, 24)
                
                HStack {
                    VStack(alignment: .leading,spacing: 4) {
                        Text("Abdelrahman Qasim")
                            .foregroundColor(Color(hex: "334669"))
                            .font(.system(size: 28, weight: .bold, design: .default))
                        
                        Text("Senior IOS Developer")
                            .foregroundColor(Color(hex: "334669").opacity(0.6))
                            .font(.system(size: 16, weight: .bold, design: .default))
                    }
                    Spacer(minLength: 0)
                    
                    Image("profile")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .clipShape(Circle())
                        .shadow(color: Color(hex: "2D3747").opacity(0.2762), radius: 15, x: 5, y: 9)
                }
                .frame(maxWidth: .infinity,alignment: .leading)
                .padding(.top, 43)
                .padding(.horizontal, 24)
                
                ZStack(alignment: .bottom) {
                    VStack {
                        HeaderCapsule()
                        HStack {
                            Text("Shot")
                                .font(.system(size: 16).bold())
                            Spacer()
                            
                            Image("list")
                                .aspectRatio(contentMode: .fit)
                                .font(.title)
                        }
                        .padding(.horizontal)
                        .padding(.top)
                        .foregroundColor(Color(hex: "334669"))
                        
                        ScrollView {
                            VStack(alignment: .leading,spacing: 16) {
                                HStack {
                                    Image("im4")
                                        .aspectRatio(contentMode: .fit)
                                    Image("im1")
                                        .aspectRatio(contentMode: .fit)
                                }
                                
                                HStack {
                                    Image("im3")
                                        .aspectRatio(contentMode: .fit)
                                    Image("im2")
                                        .aspectRatio(contentMode: .fit)
                                }
                                
                            }
                            .frame(maxWidth: .infinity,alignment: .leading)
                            .padding(.horizontal)
                        }
                        
                        
                    }
                   
                    .background(
                        RoundedRectangle(cornerRadius: 20)
                            .overlay (
                                ZStack {
                                    LinearGradient(colors: [
                                        Color.white,
                                        Color(hex: "E5EFFA"),
                                    ], startPoint: .topLeading, endPoint: .bottomTrailing)
                                        .cornerRadius(20)
                                        .shadow(color: Color(hex: "B0C3D2"), radius: 66, x: 25, y: 28)
                                    Color(hex: "E5EFFA")
                                        .cornerRadius(20)
                                        .offset(y: 2)
                                }
                            )
                    )
                    
                    VStack {
                        HeaderCapsule()
                        HStack {
                            Text("Whislist")
                                .font(.system(size: 16).bold())
                            Spacer()
                            
                            Image("list")
                                .aspectRatio(contentMode: .fit)
                                .font(.title)
                        }
                        .padding(.horizontal)
                        .padding(.top)
                        .foregroundColor(Color(hex: "334669"))
                        
                        VStack(alignment: .leading,spacing: 16) {
                            ScrollView(.horizontal, showsIndicators: false) {
                                HStack(spacing: 9) {
                                    WishListImage(image: "rect1")
                                    WishListImage(image: "rect2")
                                    WishListImage(image: "rect3")
                                    WishListImage(image: "rect4")
                                    ShadedWishItem(size: .init(width: 58.92, height: 58.92)) {
                                        Text("+7")
                                    }
                                }
                            }
                            
                            
                        }
                        .frame(maxWidth: .infinity,alignment: .leading)
                        .padding(.horizontal)
                        
                        Spacer()
                    }
                    .background(
                        RoundedRectangle(cornerRadius: 20)
                            .overlay (
                                ZStack {
                                    LinearGradient(colors: [
                                        Color.white,
                                        Color(hex: "E5EFFA"),
                                    ], startPoint: .topLeading, endPoint: .bottomTrailing)
                                        .cornerRadius(20)
                                        .shadow(color: Color(hex: "B0C3D2"), radius: 66, x: 25, y: 28)
                                    Color(hex: "E5EFFA")
                                        .cornerRadius(20)
                                        .offset(y: 2)
                                }
                            )
                    )
                    .frame(maxWidth: .infinity,maxHeight: size.height * 0.3)
                }
                .frame(maxWidth: .infinity,maxHeight: .infinity,alignment: .bottom)
                .padding(.top)
                
            } .frame(width: size.width,height: size.height,alignment: .bottom)
        }.frame(maxWidth: .infinity, maxHeight: .infinity,alignment: .topLeading)
            .background(
                Color(hex: .primaryColor)
                    .ignoresSafeArea(.all, edges: .all)
            )
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
