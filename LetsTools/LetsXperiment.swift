//
//  LetsXperiment.swift
//  LetsTools
//
//  Created by Maraz Hossain on 1/21/25.
//

import Kingfisher
import SwiftUI

struct LetsXperiment: View {
    var videoCategories: [VideoCategoriesResponse] = categories
    var videoSuggestions: [VideoResponse] = videoData
    @State private var count: Int = 0

    var body: some View {
        ScrollView {
            Button {
                count += 1

            } label: {
                Text("Count \(count)")
                    .padding()
                    .background(.blue)
                    .foregroundStyle(.white)
                    .cornerRadius(12)
            }

            VStack {
                ForEach(videoSuggestions) { video in
                    VStack{
                        ZStack(alignment: .bottomTrailing) {
                           
//                            Image(systemName: "magnifyingglass")
//                                .resizable()
//                                .scaledToFill()
//                                .frame(width: UIScreen.main.bounds.width)
////                                .frame(height: 200)
//                                .clipShape(Rectangle())

                            
                            KFImage(URL(string: video.thumbnailUrl))
                                  .resizable()
                                  .scaledToFit()
                                  .frame(width: UIScreen.main.bounds.width)  // Fixed width
                                  .clipShape(Rectangle())
                              
                              Spacer().frame(height: UIScreen.main.bounds.width / 1.8)
                            
                            
//                            GeometryReader { geometry in
//                                KFImage(URL(string: video.thumbnailUrl))
//                                    .resizable()
//                                    .scaledToFill()
//                                    .frame(width: geometry.size.width)  // Use GeometryReader width
//                                    .frame(height: geometry.size.width / 1.8)  // Dynamically set height based on width
//                                    .clipShape(Rectangle())
//                            }
//                            .frame(height: UIScreen.main.bounds.width / 1.8)
//                            
//                            KFImage(URL(string: video.thumbnailUrl))
//                                .resizable()
//                                .scaledToFill()
//                                .frame(width: UIScreen.main.bounds.width)
//                                .aspectRatio(16/9, contentMode: .fill)
//                                .clipShape(Rectangle())

                            Text("10:00")
                                .font(.footnote)
                                .fontWeight(.semibold)
                                .frame(width: 50, height: 25)
                                .background(Color.black.opacity(0.5))
                                .cornerRadius(8)
                                .padding(.bottom, 10)
                                .padding(.trailing, 8)
                        }
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

            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 16) {
                    ForEach(videoCategories) { category in
                        Button {} label: {
                            Text(category.name)
                                .font(.subheadline)
                                .foregroundStyle(.white)
                                .padding(8)
                                .background(RoundedRectangle(cornerRadius: 6).fill(Color.gray.opacity(0.4)))
                        }
                    }
                    Spacer()
                }
                .padding(.horizontal, 10)

                //            .padding(.bottom)
            }
        }
    }
}

#Preview {
    LetsXperiment()
}
