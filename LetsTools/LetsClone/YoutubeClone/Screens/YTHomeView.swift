//
//  YTHomeView.swift
//  LetsTools
//
//  Created by Maraz Hossain on 1/31/25.
//

import SwiftUI

struct YTHomeView: View {
    var body: some View {
        NavigationStack {
            // Categories
            VideoCategoryView()

            // Video suggestion 1

            // Video suggestion 2

            // Shorts

            Spacer()
        }
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                HStack {
                    Image(systemName: "play.rectangle.fill")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 20, height: 20)
                        .foregroundStyle(Color.red)
                        .background(Color.white)

                    Text("Youtube")
                        .font(.title3)
                        .fontWeight(.semibold)
                }
            }

            ToolbarItem(placement: .topBarTrailing) {
                HStack(spacing: 24) {
                    Image(systemName: "play.display")
                        .resizable()
                        .fontWeight(.semibold)
                        .frame(width: 20, height: 20)

                    Image(systemName: "bell")
                        .resizable()
                        .fontWeight(.semibold)
                        .frame(width: 20, height: 20)

                    Image(systemName: "magnifyingglass")
                        .resizable()
                        .fontWeight(.semibold)
                        .frame(width: 20, height: 20)
                }
            }
        }
    }
}

#Preview {
    NavigationView {
        YTHomeView()
    }
}

struct VideoCategoryView: View {
    var videoCategories: [VideoCategoriesResponse] = categories

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(videoCategories) { category in
                    Button {} label: {
                        Text(category.name)
                            .font(.subheadline)
                            .foregroundStyle(.white)
                            .padding(8)
                            .background(RoundedRectangle(cornerRadius: 6).fill(Color.gray.opacity(0.4)))
                    }
                }
            }
            .padding(.horizontal, 10)
        }
    }
}
