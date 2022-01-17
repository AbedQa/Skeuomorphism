//
//  WishListImage.swift
//  Skeuomorphism
//
//  Created by AbdelrahmanQasim on 1/17/22.
//

import SwiftUI

struct WishListImage: View {
    var image: String
    var body: some View {
        Image(image)
            .resizable()
            .frame(maxWidth: 58.92, maxHeight: 58.92)
            .aspectRatio(contentMode: .fit)
            .shadow(color: Color(hex: "B0C3D2").opacity(0.7278), radius: 14, x: 6, y: 7)
            .cornerRadius(14)
    }
}
