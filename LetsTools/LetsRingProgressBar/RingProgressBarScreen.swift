//
//  RingProgressBarScreen.swift
//  LetsTools
//
//  Created by Maraj Hossain on 7/4/24.
//

import SwiftUI

struct RingProgressBarScreen: View {
    @Environment(\.dismiss) var dismiss

    @State var drawingStroke: Bool = false
    @State var progressValueOne: CGFloat = 0.0
    @State var progressValueTwo: CGFloat = 0.0
    @State var progressValueThree: CGFloat = 0.0

    var body: some View {
        VStack {
            RingProgressBar(
                isRingAnimated: $drawingStroke,
                progressValueOne: $progressValueOne,
                progressValueTwo: $progressValueTwo,
                progressValueThree: $progressValueThree
            )
            .onTapGesture {
                drawingStroke.toggle()
                progressValueOne = CGFloat.random(in: 0...1)
                progressValueTwo = CGFloat.random(in: 0...1)
                progressValueThree = CGFloat.random(in: 0...1)
            }
            .navigationTitle("Ring Progress Bar")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarBackButtonHidden()
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        dismiss()
                    } label: {
                        Image(systemName: "chevron.left")
                    }
                }
            }
            .ignoresSafeArea()
        }
    }
}

struct RingProgressBarScreen_Previews: PreviewProvider {
    static var previews: some View {
        RingProgressBarScreen()
    }
}
