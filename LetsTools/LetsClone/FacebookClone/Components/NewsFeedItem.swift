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

                VStack(alignment: .leading, spacing: 0) {
                    Text("BBC NEWS")
                        .font(.headline)

                    HStack(spacing: 0) {
                        Text("2d")
                        Text("•")
                        Image(systemName: "globe.europe.africa.fill")
                    }
                }

                Spacer()

                Image(systemName: "ellipsis")

                Image(systemName: "xmark")
            }
            .padding(.top, 8)
            .padding(.horizontal, 16)

            Text("Lorem ipsum dolor sit amet, consectetur adipi elit. Nunc lacinia bibendum pellentesque.")
                .padding(.vertical, 8)
                .padding(.horizontal, 16)
                .frame(maxWidth: .infinity, alignment: .leading)

            VStack(alignment: .leading, spacing: 10) {
                AsyncImage(url: URL(string: "https://picsum.photos/200")) { phase in
                    switch phase {
                    case .empty:
                        ProgressView()
                            .frame(width: .infinity, height: 300, alignment: .center)

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
                    .padding(.horizontal, 16)
                    .frame(maxWidth: .infinity, alignment: .leading)

                Text("Lorem ipsum dolor sit amet, consect adipis elit.")
                    .font(.system(.callout, weight: .bold))
                    .padding(.bottom, 8)
                    .padding(.leading, 16)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .background(.gray.opacity(0.4))

            HStack(spacing: 8) {
                ZStack {
                    Image(systemName: "heart.circle.fill")
                        .foregroundColor(.red)
                        .offset(x: 14)

                    Image(systemName: "hand.thumbsup.circle.fill")
                        .foregroundColor(.blue)
                        .overlay(
                            Circle().stroke(Color.white, lineWidth: 2)
                        )
                }

                Text("9.7K")
                    .padding(.leading, 8)

                Spacer()

                Text("1.5K comments")
                Text("231K shares")
                    .padding(.trailing, 12)
            }
            .padding(.vertical, 8)
            .padding(.horizontal, 16)
        }
        .background(Color.white)
    }
}

#Preview {
    NewsFeedItem()
}
