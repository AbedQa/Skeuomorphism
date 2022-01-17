//
//  ShadedWishItem.swift
//  Skeuomorphism
//
//  Created by AbdelrahmanQasim on 1/17/22.
//

import SwiftUI

struct ShadedWishItem<Content: View>: View {
    var size: CGSize
    var content: () -> Content
    var body: some View {
        RoundedRectangle(cornerRadius: 9)
            .fill(Color(hex: "E3EDF7")).overlay (
                RoundedRectangle(cornerRadius: 9)
                    .stroke(Color.gray, lineWidth: 4)
                    .blur(radius: 4)
                    .offset(x: 2, y: 2)
                    .mask(
                        RoundedRectangle(cornerRadius: 9).fill(
                        LinearGradient(colors: [
                            Color.black, Color.clear
                        ], startPoint: .top, endPoint: .bottom)
                    ))
            )
            .overlay(
                content()
                    .foregroundColor(Color(hex: "6E81A0"))
                    .font(.system(size: 16).bold())
                    .background(
                        RoundedRectangle(cornerRadius: 9)
                            .stroke(Color.white, lineWidth: 8)
                            .blur(radius: 4)
                            .offset(x: -2, y: -2)
                            .mask(RoundedRectangle(cornerRadius: 9)
                                    .fill(
                                        LinearGradient(colors: [
                                            Color.clear, Color.black
                                        ], startPoint: .top, endPoint: .bottom)
                                    )
                                 )
                    )
            )
            .frame(width: size.width, height: size.height)
    }
}
