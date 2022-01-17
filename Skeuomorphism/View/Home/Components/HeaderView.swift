//
//  HeaderView.swift
//  Skeuomorphism
//
//  Created by AbdelrahmanQasim on 1/17/22.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        HStack {
            NavigationItemWithBlur(imageName: "back")
            
            Spacer()
            
            NavigationItemWithBlur(imageName: "notification")
            
            Button {} label: {
                Image("cart")
                    .aspectRatio(contentMode: .fit)
                    .font(.title)
            }
            .padding()
            .padding(.horizontal, 10)
            .background(
                Color(hex: "E6EEF8")
                    .clipShape(Capsule())
                    .shadow(color: .white.opacity(0.956), radius: 12, x: -7, y: -7)
                    .shadow(color: Color(hex: "F6FBFF").opacity(0.7415), radius: 15, x: -13, y: -7)
                    .shadow(color: Color(hex: "F4F8FB").opacity(0.3457), radius: 12, x: -8, y: 5)
                    .shadow(color: Color(hex: "AABBC9").opacity(0.7953), radius: 30, x: 2, y: 12)
            )
            .overlay(
                Text("3")
                    .font(.system(size: 10))
                    .foregroundColor(.white)
                    .padding(.horizontal, 4)
                    .padding(.vertical, 4)
                    .background(
                        LinearGradient(colors: [
                            Color(hex: "CD8A9A"),
                            Color(hex: "FEAAA0"),
                        ], startPoint: .topLeading, endPoint: .bottomTrailing)
                            .clipShape(Circle())
                    ).offset(x: 10, y: -5)
            )
            .padding(.leading)
        }
        .frame(maxWidth: .infinity)
        .foregroundColor(.black)
    }
}


struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}

struct NavigationItemWithBlur: View {
    var imageName: String
    var body: some View {
        Button {} label: {
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 14, height: 14)
        }
        .padding()
        .background(
            Color(hex: "E6EEF8")
                .clipShape(Circle())
                .shadow(color: .white.opacity(0.956), radius: 12, x: -7, y: -7)
                .shadow(color: Color(hex: "F6FBFF").opacity(0.7415), radius: 15, x: -13, y: -7)
                .shadow(color: Color(hex: "F4F8FB").opacity(0.3457), radius: 12, x: -8, y: 5)
                .shadow(color: Color(hex: "AABBC9").opacity(0.7953), radius: 30, x: 2, y: 12)
        )
    }
}
