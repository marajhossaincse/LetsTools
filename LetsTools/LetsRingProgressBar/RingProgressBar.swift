//
//  RingProgressBar.swift
//  LetsTools
//
//  Created by Maraj Hossain on 7/4/24.
//

import SwiftUI

struct RingProgressBar: View {
    var body: some View {
        ZStack {
            Color.black
            ring(for: .red, progress: 0.4)
                .frame(width: 165)
            ring(for: .green, progress: 0.4)
                .frame(width: 128)
            ring(for: .blue, progress: 0.4)
                .frame(width: 91)
        }
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
        RingProgressBar()
    }
}
