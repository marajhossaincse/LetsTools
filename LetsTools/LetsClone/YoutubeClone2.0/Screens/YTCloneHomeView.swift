//
//  YTCloneHomeView.swift
//  LetsTools
//
//  Created by Maraz Hossain on 2/3/25.
//

import Kingfisher
import SwiftUI

struct YTCloneHomeView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 14) {
                    // category
                    CloneCategoryButtonView()
                        .padding()

                    // video section
                    SectionView()

                    // shorts section
                    ShortsSectionView()
                }
            }
            // set logo and icons
            .toolbar {
                // logo
                ToolbarItem(placement: .topBarLeading) {
                    HStack(spacing: 5) {
                        ZStack {
                            Rectangle()
                                .fill(Color.white)
                                .frame(width: 20, height: 20)
                            Image(systemName: "play.rectangle.fill")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 30)
                                .foregroundStyle(Color.red)
                        }
                        // title
                        Text("Youtube")
                            .font(.title3)
                            .fontWeight(.semibold)
                    }
                }
                // icons
                ToolbarItem(placement: .topBarTrailing) {
                    HStack(spacing: 20) {
                        // tv
                        Button {} label: {
                            Image(systemName: "airplayvideo")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 20, height: 20)
                                .foregroundStyle(Color.white)
                        }

                        // notification
                        Button {} label: {
                            Image(systemName: "bell")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 20, height: 20)
                                .foregroundStyle(Color.white)
                        }

                        // search
                        Button {} label: {
                            Image(systemName: "magnifyingglass")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 20, height: 20)
                                .foregroundStyle(Color.white)
                        }
                    }
                }
            }
        }
        .preferredColorScheme(.dark)
    }
}

#Preview {
    YTCloneHomeView()
}

struct CloneCategoryButtonView: View {
    var categoryDatas: [CategoryResponse] = categoryData

    /// selected index
    @State private var selectedIndex: Int = 0

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 12) {
                ForEach(categoryDatas.indices, id: \.self) { index in
                    Button {
                        selectedIndex = index
                    } label: {
                        Text(categoryDatas[index].title)
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .foregroundStyle(selectedIndex == index ? .black : .white)
                            .padding(.horizontal, 16)
                            .padding(.vertical, 10)
                            .background(selectedIndex == index ? .white : Color.grayButtonColor)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                    }
                }
            }
        }
    }
}

struct SectionView: View {
    var videos: [VideoSectionResponse] = videoSectionData
    var body: some View {
        LazyVStack(spacing: 32) {
            ForEach(videos) { video in

                NavigationLink {
                    VideoDetailView(video: video)
                } label: {
                    VideoNormalView(video: video)
                }
            }
        }
    }
}

struct VideoNormalView: View {
    var video: VideoSectionResponse

    var body: some View {
        VStack(spacing: 22) {
            // thumbnail and duration
            ZStack(alignment: .bottomTrailing) {
                KFImage(URL(string: video.thumbnailUrl))
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(maxWidth: .infinity)
                    .frame(height: 200)
                    .clipped()

                Text(video.duration)
                    .font(.footnote)
                    .padding(.horizontal, 6)
                    .padding(.vertical, 2)
                    .background(Color.grayButtonColor.opacity(0.6))
                    .clipShape(RoundedRectangle(cornerRadius: 8))
                    .padding(.horizontal, 12)
                    .padding(.bottom)
                    .foregroundStyle(.white)
            }
            // content info
            HStack(alignment: .top) {
                // channel image url
                KFImage(URL(string: video.channelImgUrl))
                    .resizable()
                    .scaledToFill()
                    .frame(width: 46, height: 46)
                    .background(.blue)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(.white.opacity(0.5)))
                    .padding(.top, 5)

                // title
                // view and date
                VStack(alignment: .leading) {
                    Text(video.title)
                        .font(.headline)
                        .fontWeight(.semibold)
                        .lineLimit(2)
                        .foregroundStyle(.white)
                        .multilineTextAlignment(.leading)

                    Text("\(video.channelName) - \(video.totalViews) - \(video.publishedAt)")
                        .font(.subheadline)
                        .fontWeight(.regular)
                        .foregroundStyle(.white.opacity(0.7))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .lineLimit(2)
                }
                Spacer()
                // icon
                Image(systemName: "ellipsis")
                    .rotationEffect(.degrees(90))
                    .padding(.top, 12)
                    .foregroundStyle(.white)
            }
            .padding(.horizontal)
        }
    }
}

struct ShortsSectionView: View {
    var videos: [VideoSectionResponse] = videoSectionData

    /// grid item
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]

    var body: some View {
        VStack(spacing: 12) {
            // text and logo shorts
            HStack(spacing: 10) {
                ZStack {
                    Rectangle()
                        .fill(.white)
                        .frame(width: 20, height: 20)

                    Image(systemName: "s.square.fill")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 30)
                        .foregroundStyle(.red)
                }
                Text("Shorts")
                    .font(.title3)
                    .fontWeight(.semibold)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal)

            // grid item
            LazyVGrid(columns: columns, spacing: 10) {
                ForEach(videos) { video in
                    VideoShortView(video: video)
                }
            }
            .padding(.horizontal, 12)
        }
        .padding(.bottom, 12)
    }
}

struct VideoShortView: View {
    var video: VideoSectionResponse

    var body: some View {
        ZStack(alignment: .bottom) {
            // thumbnail
            KFImage(URL(string: video.thumbnailUrl))
                .resizable()
                .scaledToFill()
                .frame(width: UIScreen.main.bounds.width / 2 - 20, height: 240)
                .background(.green.opacity(0.3))

            // black overlay
            Rectangle()
                .fill(.black.opacity(0.1))
                .frame(width: UIScreen.main.bounds.width / 2 - 20, height: 240)
                .clipped()

            // title
            Text(video.title)
                .font(.subheadline)
                .foregroundStyle(.white)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal)
                .padding(.bottom, 8)
                .lineLimit(2)
                .lineSpacing(-10)
                .frame(width: UIScreen.main.bounds.width / 2 - 20)
                .multilineTextAlignment(.leading)
        }
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .shadow(radius: 4)
    }
}
