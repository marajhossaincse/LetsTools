//
//  RingProgressBar.swift
//  LetsTools
//
//  Created by Maraj Hossain on 7/4/24.
//

import SwiftUI

struct RingProgressBar: View {
    @Binding var isAnimated: Bool

    @Binding var progressValueOne: CGFloat
    @Binding var progressValueTwo: CGFloat
    @Binding var progressValueThree: CGFloat

    let animation = Animation.easeOut(duration: 3)

    var body: some View {
        ZStack {
            Color.black
            ring(for: .red, progress: progressValueOne)
                .frame(width: 165)
            ring(for: .green, progress: progressValueTwo)
                .frame(width: 128)
            ring(for: .blue, progress: progressValueThree)
                .frame(width: 91)
        }
        .animation(animation, value: isAnimated)
        .ignoresSafeArea()
    }

    @ViewBuilder
    private func ring(for color: Color, progress value: CGFloat) -> some View {
        Circle()
            .stroke(style: StrokeStyle(lineWidth: 16))
            .foregroundStyle(.tertiary)
            .overlay {
                Circle()
                    .trim(from: 0, to: value)
                    .stroke(color.gradient, style: StrokeStyle(lineWidth: 16, lineCap: .round))
            }
            .rotationEffect(.degrees(-90))
    }
}

struct RingProgressBar_Previews: PreviewProvider {
    static var previews: some View {
        RingProgressBar(
            isAnimated: .constant(true),
            progressValueOne: .constant(CGFloat.random(in: 0...1)),
            progressValueTwo: .constant(CGFloat.random(in: 0...1)),
            progressValueThree: .constant(CGFloat.random(in: 0...1))
        )
    }
}
