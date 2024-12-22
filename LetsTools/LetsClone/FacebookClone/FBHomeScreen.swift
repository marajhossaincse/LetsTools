//
//  HomeScreen.swift
//  LetsTools
//
//  Created by Maraz Hossain on 11/25/24.
//

import SwiftUI

struct FBHomeScreen: View {
    var body: some View {
        ScrollView {
            HStack {
                Text("Facebook")
                    .font(.custom("Helvetica Neue Bold", size: 25))
                    .foregroundColor(.blue)
                    .fontWeight(.bold)

                Spacer()

                createIcon(withIcon: "plus")
                createIcon(withIcon: "magnifyingglass")
                createIcon(withIcon: "message.fill")
            }

            Divider()

            HStack {
                AsyncImage(url: URL(string: "https://picsum.photos/200")) { phase in
                    switch phase {
                    
                    case .empty:
                        ProgressView()
                  
                    case .success(let image):
                        image
                            .resizable()
                            .scaledToFill()
                            .frame(width: 35, height: 30)
                            .clipShape(Circle())
                            .overlay(Circle())
                    
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
            }

            StoryCart()
            
            NewsFeedItem()
        }
        .navigationBarBackButtonHidden(true)
        .padding(.horizontal, 10)
    }
}

func createIcon(withIcon icon: String) -> some View {
    Image(systemName: icon)
        .resizable()
        .scaledToFit()
        .frame(width: 20, height: 20)
        .foregroundColor(.black)
        .background(
            Circle()
                .fill(Color.gray.opacity(0.25))
                .frame(width: 30, height: 30)
        )
        .padding(4)
}

#Preview {
    FBHomeScreen()
}
