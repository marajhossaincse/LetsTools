//
//  StatusCard.swift
//  LetsTools
//
//  Created by Maraz Hossain on 12/24/24.
//

import SwiftUI

struct StatusCard: View {
    var body: some View {
        HStack {
            AsyncImage(url: URL(string: "https://picsum.photos/200/300")) { phase in
                switch phase {
                case .empty:
                    ProgressView()

                case .success(let image):
                    image
                        .resizable()
                        .scaledToFill()
                        .frame(width: 40, height: 40)
                        .clipShape(Circle())
                        .overlay(Circle().fill(.clear))

                case .failure:
                    Text("Failed to load image")

                @unknown default:
                    EmptyView()
                }
            }

            Text("What's on your mind?")

            Spacer()

            Image(systemName: "photo.on.rectangle")
                .foregroundStyle(.green)
        } // Status Box
        .background(Color.white)
        .padding()
    }
}

#Preview {
    StatusCard()
}
