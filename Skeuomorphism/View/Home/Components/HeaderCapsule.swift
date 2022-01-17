//
//  HeaderCapsule.swift
//  Skeuomorphism
//
//  Created by AbdelrahmanQasim on 1/17/22.
//

import SwiftUI

struct HeaderCapsule: View {
    var body: some View {
        Capsule()
            .foregroundColor(Color(hex: "6E81A0").opacity(0.2359))
            .frame(width: 120, height: 3)
            .padding(.top)
    }
}


struct HeaderCapsule_Previews: PreviewProvider {
    static var previews: some View {
        HeaderCapsule()
    }
}
