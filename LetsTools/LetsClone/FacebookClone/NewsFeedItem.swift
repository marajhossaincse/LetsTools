//
//  NewsFeedItem.swift
//  LetsTools
//
//  Created by Maraz Hossain on 12/21/24.
//

import SwiftUI

struct NewsFeedItem: View {
    var body: some View {
        VStack(spacing: 0) {
            HStack(alignment: .center, spacing: 15) {
                Image(.BBC)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 60, height: 60)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 2))
                    .shadow(radius: 5)

                VStack(alignment: .leading, spacing: 10) {
                    Text("BBC NEWS")
                        .font(.headline)

                    HStack {
                        Text("2d")
                        Text(".")
                        Image(systemName: "globe.europe.africa.fill")
                    }
                }
                .padding(.leading, 10)

                Spacer()

                Image(systemName: "ellipsis")

                Image(systemName: "xmark")
            }

            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc lacinia bibendum pellentesque.")

            VStack(alignment: .leading, spacing: 10) {
                AsyncImage(url: URL(string: "https://picsum.photos/200")) { phase in
                    switch phase {
                    case .empty:
                        ProgressView()

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

                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit.")
                    .font(.system(.callout, weight: .bold))
                    .padding(.bottom, 12)
            }
            .background(.gray.opacity(0.4))
        }
    }
}

#Preview {
    NewsFeedItem()
}
