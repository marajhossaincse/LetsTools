//
//  StoryAndReel.swift
//  LetsTools
//
//  Created by Maraz Hossain on 12/23/24.
//

import SwiftUI

struct StoryAndReelTab: View {
    @State private var selectedTab = 0

    var body: some View {
        VStack {
            HStack {
                Button(
                    action: {
                        selectedTab = 0
                    }
                ) {
                    Text("Stories")
                        .font(.headline)
                        .padding()
                        .foregroundColor(selectedTab == 0 ? .blue : .gray)
                        .frame(maxWidth: .infinity)
                }

                Button(
                    action: {
                        selectedTab = 1
                    }
                ) {
                    Text("Reels")
                        .font(.headline)
                        .padding()
                        .foregroundColor(selectedTab == 1 ? .blue : .gray)
                        .frame(maxWidth: .infinity)
                }
            }
            .padding(.top)

            if selectedTab == 0 {
                StoryCart()
            } else {
                ReelsCart()
            }

            Spacer()
        }
        .background(Color.white)
    }
}

#Preview {
    StoryAndReelTab()
}
