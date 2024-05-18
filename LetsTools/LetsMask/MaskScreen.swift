//
//  MaskScreen.swift
//  LetsTools
//
//  Created by Maraj Hossain on 18/5/24.
//

import SwiftUI

struct MaskScreen: View {
    var body: some View {
        VStack {
            Image("NSU")
                .resizable()
                .mask {
                    GeometryReader { geo in
                        Text("North South University")
                            .lineLimit(3)
                            .multilineTextAlignment(.center)
                            .font(.system(size: 80, weight: .heavy))
                            .frame(
                                width: geo.size.width,
                                height: geo.size.height
                            )
                    }
                }
        }
    }
}

struct MaskScreen_Previews: PreviewProvider {
    static var previews: some View {
        MaskScreen()
    }
}
