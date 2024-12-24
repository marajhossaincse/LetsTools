//
//  ReelsCart.swift
//  LetsTools
//
//  Created by Maraz Hossain on 12/23/24.
//

import SwiftUI

struct ReelsCart: View {
    var body: some View {
        VStack {
            Text("Welcome to the Reels screen!")
                .font(.largeTitle)
                .padding(.bottom)
            Image(systemName: "gearshape.fill")
                .font(.system(size: 50))
        }
        .padding()
    }
}

#Preview {
    ReelsCart()
}
