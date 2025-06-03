//
//  StarRatingComponent.swift
//  LetsTools
//
//  Created by Maraz Hossain on 3/2/25.
//

import SwiftUI

struct StarRatingComponent: View {
    var rating: Int = 3

    var body: some View {
        HStack(spacing: 5) {
            ForEach(0 ..< 5) { index in
                Image(systemName: index < rating ? "star.fill" : "star")
                    .foregroundStyle(Color.yellow)
                    .font(.system(size: 20))
            }
        }
    }
}

#Preview {
    StarRatingComponent()
}
