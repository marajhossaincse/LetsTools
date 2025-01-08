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
                        .overlay(
                            Rectangle()
                                .frame(width: 160, height: 2)
                                .foregroundColor(selectedTab == 0 ? .blue : .white),
                            alignment: .bottom
                        )
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
                        .overlay(
                            Rectangle()
                                .frame(width: 155, height: 2)
                                .foregroundColor(selectedTab == 1 ? .blue : .white),
                            alignment: .bottom
                        )
                }
            }
            .padding(.top)

            if selectedTab == 0 {
                StoryCart()
                    .padding(.horizontal)
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
        .padding(.vertical)
}
