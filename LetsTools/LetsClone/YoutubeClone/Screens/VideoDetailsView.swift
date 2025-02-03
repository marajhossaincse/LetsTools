//
//  VideoDetailsView.swift
//  LetsTools
//
//  Created by Maraz Hossain on 2/2/25.
//

import Kingfisher
import SwiftUI

struct VideoDetailsView: View {
    @Environment(\.dismiss) var dismiss

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                VideoViewerView()

                ChannelDetailsView()

                VideoOptionsView()

                CommentView()

                NavigationLink(destination: {
                    VideoDetailsView()
                }, label: {
                    VideoSuggestionView()
                })
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    NavigationStack {
        VideoDetailsView()
    }
}

struct VideoViewerView: View {
    @Environment(\.dismiss) var dismiss

    var body: some View {
        ZStack(alignment: .topLeading) {
            KFImage(URL(string: "https://picsum.photos/200"))
                .resizable()
                .scaledToFill()
                .frame(width: UIScreen.main.bounds.width, height: 200)
                .clipShape(Rectangle())

            Button {
                dismiss()
            } label: {
                Image(systemName: "chevron.down")
                    .foregroundStyle(Color.white)
                    .fontWeight(.semibold)
                    .frame(width: 20, height: 20)
                    .padding()
            }
        }

        VStack(alignment: .leading, spacing: 8) {
            Text("Top 10 Holiday Destinations for 2024.")

            HStack {
                Text("1M")
                Text("3 days ago")
                Text("...more")
                    .fontWeight(.medium)
            }
            .font(.caption2)
            .fontWeight(.light)
        }
        .padding(.horizontal)
    }
}

struct ChannelDetailsView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack(alignment: .center) {
                KFImage(URL(string: "https://picsum.photos/200"))
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

                Text("Travel Vibes")
                    .font(.subheadline)
                    .fontWeight(.semibold)

                Text("500K")
                    .font(.footnote)
                    .fontWeight(.light)

                Spacer()

                Button {} label: {
                    HStack {
                        Image(systemName: "bell")
                            .resizable()
                            .fontWeight(.semibold)
                            .frame(width: 15, height: 15)

                        Image(systemName: "chevron.down")
                            .resizable()
                            .frame(width: 10, height: 5)
                    }
                    .padding(.horizontal, 8)
                    .padding(.vertical, 8)
                    .foregroundStyle(Color.white)
                    .background(Color.gray.opacity(0.3))
                    .clipShape(Capsule())
                }
            }
            .padding(.vertical)
        }
        .padding(.horizontal)
    }
}

struct VideoOptionsView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            VStack(alignment: .leading, spacing: 8) {
                HStack {
                    HStack {
                        Button {} label: {
                            Image(systemName: "hand.thumbsup")
                                .resizable()
                                .frame(width: 16, height: 16)

                            Text("80K")
                                .font(.subheadline)
                        }

                        Text("|")
                            .font(.subheadline)

                        Button {} label: {
                            Image(systemName: "hand.thumbsdown")
                                .resizable()
                                .frame(width: 16, height: 16)
                        }
                    }
                    .padding(.horizontal, 8)
                    .padding(.vertical, 8)
                    .foregroundStyle(Color.white)
                    .background(Color.gray.opacity(0.3))
                    .clipShape(Capsule())

                    Button {} label: {
                        HStack {
                            Image(systemName: "arrowshape.turn.up.right")
                                .resizable()
                                .frame(width: 16, height: 16)

                            Text("Share")
                                .font(.subheadline)
                        }
                        .padding(.horizontal, 8)
                        .padding(.vertical, 8)
                        .foregroundStyle(Color.white)
                        .background(Color.gray.opacity(0.3))
                        .clipShape(Capsule())
                    }

                    Button {} label: {
                        HStack {
                            Image(systemName: "arrow.3.trianglepath")
                                .resizable()
                                .frame(width: 16, height: 16)

                            Text("Remix")
                                .font(.subheadline)
                        }
                        .padding(.horizontal, 8)
                        .padding(.vertical, 8)
                        .foregroundStyle(Color.white)
                        .background(Color.gray.opacity(0.3))
                        .clipShape(Capsule())
                    }

                    Button {} label: {
                        HStack {
                            Image(systemName: "arrow.down.to.line")
                                .resizable()
                                .frame(width: 16, height: 16)

                            Text("Download")
                                .font(.subheadline)
                        }
                        .padding(.horizontal, 8)
                        .padding(.vertical, 8)
                        .foregroundStyle(Color.white)
                        .background(Color.gray.opacity(0.3))
                        .clipShape(Capsule())
                    }

                    Button {} label: {
                        HStack {
                            Image(systemName: "scissors")
                                .resizable()
                                .frame(width: 20, height: 16)

                            Text("Clip")
                                .font(.subheadline)
                        }
                        .padding(.horizontal, 8)
                        .padding(.vertical, 8)
                        .foregroundStyle(Color.white)
                        .background(Color.gray.opacity(0.3))
                        .clipShape(Capsule())
                    }

                    Button {} label: {
                        HStack {
                            Image(systemName: "bookmark")
                                .resizable()
                                .frame(width: 15, height: 16)

                            Text("Save")
                                .font(.subheadline)
                        }
                        .padding(.horizontal, 8)
                        .padding(.vertical, 8)
                        .foregroundStyle(Color.white)
                        .background(Color.gray.opacity(0.3))
                        .clipShape(Capsule())
                    }

                    Button {} label: {
                        HStack {
                            Image(systemName: "flag")
                                .resizable()
                                .frame(width: 15, height: 16)

                            Text("Report")
                                .font(.subheadline)
                        }
                        .padding(.horizontal, 8)
                        .padding(.vertical, 8)
                        .foregroundStyle(Color.white)
                        .background(Color.gray.opacity(0.3))
                        .clipShape(Capsule())
                    }
                }
            }
            .padding(.horizontal)
        }
    }
}

struct CommentView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack {
                Text("Comments")
                    .font(.headline)
                    .fontWeight(.semibold)

                Text("5K")
                    .font(.footnote)
                    .fontWeight(.light)
            }

            HStack {
                KFImage(URL(string: "https://picsum.photos/200"))
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

                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit.")
                    .font(.callout)
                    .fontWeight(.light)
            }
        }
        .padding(.vertical)
        .padding(.horizontal, 8)
        .frame(maxWidth: .infinity)
        .background(Color.gray.opacity(0.3))
        .cornerRadius(12)
        .padding(.horizontal)
    }
}

// struct VideoSuggestionView: View {
//    var videoSuggestions: [VideoResponse] = videoData
//
//    var body: some View {
//        VStack {
//            ForEach(videoSuggestions) { video in
//                ZStack(alignment: .bottomTrailing) {
//                    KFImage(URL(string: video.thumbnailUrl))
//                        .resizable()
//                        .scaledToFill()
//                        .frame(maxWidth: .infinity)
//                        .frame(height: 200)
//                        .clipShape(Rectangle())
//
//                    Text("10:00")
//                        .font(.footnote)
//                        .fontWeight(.semibold)
//                        .frame(width: 50, height: 25)
//                        .background(Color.black.opacity(0.5))
//                        .cornerRadius(8)
//                        .padding(.bottom, 10)
//                        .padding(.trailing, 8)
//                }
//
//                HStack(alignment: .top) {
//                    KFImage(URL(string: video.profileImageUrl))
//                        .resizable()
//                        .scaledToFill()
//                        .frame(width: 35, height: 35)
//                        .clipShape(Circle())
//                        .overlay(
//                            Circle().stroke(
//                                Color.white,
//                                lineWidth: 1
//                            )
//                        )
//                        .shadow(radius: 5)
//
//                    VStack(alignment: .leading, spacing: 6) {
//                        HStack {
//                            Text(video.title)
//                                .font(.subheadline)
//                                .fontWeight(.semibold)
//
//                            Spacer()
//
//                            Text("⋮")
//                                .font(.headline)
//                                .fontWeight(.bold)
//                        }
//
//                        HStack {
//                            Text("\(video.name) -")
//                                .font(.caption)
//                                .fontWeight(.light)
//
//                            Text("\(video.views) -")
//                                .font(.caption)
//                                .fontWeight(.light)
//
//                            Text("\(video.uploadDuration)")
//                                .font(.caption)
//                                .fontWeight(.light)
//                        }
//                    }
//                }
//                .padding(.horizontal)
//                .padding(.bottom)
//            }
//        }
//    }
// }
