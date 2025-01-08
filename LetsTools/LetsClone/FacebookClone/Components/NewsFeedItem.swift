//
//  NewsFeedItem.swift
//  LetsTools
//
//  Created by Maraz Hossain on 12/21/24.
//

import SwiftUI

struct NewsFeedItem: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            HStack(alignment: .center) {
                Image(.BBC)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 28, height: 28)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 2))
                    .shadow(radius: 4)
                    .padding(.horizontal, 8)

                VStack(alignment: .leading, spacing: 12) {
                    Text("BBC NEWS")
                        .font(.headline)

                    HStack {
                        Text("2d")
                        Text("•")
                        Image(systemName: "globe.europe.africa.fill")
                    }
                }

                Spacer()

                Image(systemName: "ellipsis")

                Image(systemName: "xmark")
            }

            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc lacinia bibendum pellentesque.")
                .padding(.vertical, 8)
                .padding(.horizontal, 6)

            VStack(alignment: .leading, spacing: 10) {
                AsyncImage(url: URL(string: "https://picsum.photos/200")) { phase in
                    switch phase {
                    case .empty:
                        ProgressView()
                            .frame(width: .infinity, height: .infinity, alignment: .center)

                    case .success(let image):
                        image
                            .resizable()
                            .frame(width: .infinity, height: 300)
                            .scaledToFill()

                    case .failure:
                        Text("Failed to load image")

                    @unknown default:
                        EmptyView()
                    }
                }

                Text("BBC NEWS")
                    .font(.system(.body))
                    .foregroundStyle(.gray)
                    .padding(.horizontal, 6)

                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit.")
                    .font(.system(.callout, weight: .bold))
//                    .padding(.bottom, 12)
                    .padding(.vertical, 4)
                    .padding(.horizontal, 6)
            }
            .background(.gray.opacity(0.4))

            HStack(spacing: 8) {
                ZStack {
                    Image(systemName: "heart.circle.fill")
                        .foregroundColor(.red)
                        .offset(x: 10, y: 0)

                    Image(systemName: "hand.thumbsup.circle.fill")
                        .foregroundColor(.blue)
                        .overlay(
                            Circle().stroke(Color.white, lineWidth: 2)
                        )
                }

                Text("9.7K")

                Spacer()

                Text("1.5K comments")
                Text("231K shares")
            }
            .padding(.vertical, 8)
        }
        .background(Color.white)
    }
}

#Preview {
    NewsFeedItem()
}
