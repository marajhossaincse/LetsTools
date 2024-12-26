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

                #warning("Repeat this view by using a foreach loop")
                NewsFeedItem()
                NewsFeedItem()
                NewsFeedItem()
            }
            .background(Color.gray.opacity(0.4))
        }
        .background(Color.white)
    }
}

#Preview {
    FBHomeScreen()
}
