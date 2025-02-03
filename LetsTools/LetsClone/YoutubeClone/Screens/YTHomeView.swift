//
//  YTHomeView.swift
//  LetsTools
//
//  Created by Maraz Hossain on 1/31/25.
//

import Kingfisher
import SwiftUI

struct YTHomeView: View {
    var body: some View {
        NavigationStack {
            ScrollView(showsIndicators: false) {
                VStack {
                    // Categories
                    VideoCategoryView()

                    // Video suggestions
                    NavigationLink(destination: {
                        VideoDetailsView()
                    }, label: {
                        VideoSuggestionView()
                    })

                    // Shorts
                    ShortsView()
                }
                .padding(.vertical, 8)
            }
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
            //            .padding(.bottom)
        }
    }
}

struct VideoSuggestionView: View {
    var videoSuggestions: [VideoResponse] = videoData

    var body: some View {
        VStack {
            ForEach(videoSuggestions) { video in
                ZStack(alignment: .bottomTrailing) {
                    KFImage(URL(string: video.thumbnailUrl))
                        .resizable()
                        .scaledToFill()
                        .frame(maxWidth: .infinity)
                        .frame(height: 200)
                        .clipShape(Rectangle())

                    Text("10:00")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .frame(width: 50, height: 25)
                        .background(Color.black.opacity(0.5))
                        .cornerRadius(8)
                        .padding(.bottom, 10)
                        .padding(.trailing, 8)
                }

                HStack(alignment: .top) {
                    KFImage(URL(string: video.profileImageUrl))
                        .resizable()
                        .scaledToFill()
                        .frame(width: 35, height: 35)
                        .clipShape(Circle())
                        .overlay(
                            Circle().stroke(
                                Color.white,
                                lineWidth: 1
                            )
                        )
                        .shadow(radius: 5)

                    VStack(alignment: .leading, spacing: 6) {
                        HStack {
                            Text(video.title)
                                .font(.subheadline)
                                .fontWeight(.semibold)

                            Spacer()

                            Text("⋮")
                                .font(.headline)
                                .fontWeight(.bold)
                        }

                        HStack {
                            Text("\(video.name) -")
                                .font(.caption)
                                .fontWeight(.light)

                            Text("\(video.views) -")
                                .font(.caption)
                                .fontWeight(.light)

                            Text("\(video.uploadDuration)")
                                .font(.caption)
                                .fontWeight(.light)
                        }
                    }
                }
                .padding(.horizontal)
                .padding(.bottom)
            }
        }
        .foregroundStyle(Color.white)
    }
}

struct ShortsView: View {
    var shorts: [ShortsResponse] = shortsData

    let gridLayout = [
        GridItem(.flexible(), spacing: 8),
        GridItem(.flexible(), spacing: 8)
    ]

    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image(systemName: "play.circle.fill")
                    .foregroundStyle(Color.red)

                Text("Shorts")
                    .font(.headline)
                    .fontWeight(.bold)
            }
            LazyVGrid(columns: gridLayout, spacing: 8) {
                ForEach(shorts) { short in
                    ZStack(alignment: .bottomLeading) {
                        KFImage(URL(string: short.imageUrl))
                            .resizable()
                            .scaledToFill()
                            .frame(width: 180, height: 240)
                            .clipShape(RoundedRectangle(cornerRadius: 10))

                        Text(short.title)
                            .font(.subheadline)
                            .padding(.bottom, 4)
                            .padding(.horizontal)
                    }
                }
            }
        }
        .padding(.horizontal)
    }
}
