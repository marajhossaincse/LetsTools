//
//  CutCardScreen.swift
//  LetsTools
//
//  Created by Maraj Hossain on 15/6/24.
//

import SwiftUI

struct CutCardScreen: View {
    var body: some View {
        ZStack {
            Image(systemName: "lanyardcard.fill")
                .font(.system(size: 500))
                .foregroundStyle(
                    LinearGradient(
                        colors: [.pink, .purple, .cyan],
                        startPoint: .bottomLeading,
                        endPoint: .topTrailing
                    )
                )

            VStack {
                Image(systemName: "apple.logo")
                    .font(.system(size: 200))

                Text("WWDC 24")
                    .font(.system(size: 55))
            }
            .blendMode(.destinationOut)
            .padding(.top, 50)
        }
        .compositingGroup()
        .shadow(
            color: .gray,
            radius: 15,
            x: -10,
            y: 10
        )
    }
}

struct CutCardScreen_Previews: PreviewProvider {
    static var previews: some View {
        CutCardScreen()
    }
}
