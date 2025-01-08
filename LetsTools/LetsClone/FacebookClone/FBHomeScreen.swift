//
//  HomeScreen.swift
//  LetsTools
//
//  Created by Maraz Hossain on 11/25/24.
//

import SwiftUI

struct FBHomeScreen: View {
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack {
                VStack {
                    HeaderTitleView()

                    Divider()

                    StatusCard()
                }
                .background(Color.white)

                Spacer()

                StoryAndReelTab()

                Spacer()

                ForEach(1...Int.random(in: 2...5), id: \.self) { _ in
                    NewsFeedItem()
                }
            }
            .background(Color.gray.opacity(0.4))
        }
        .background(Color.white)
    }
}

#Preview {
    FBHomeScreen()
}
