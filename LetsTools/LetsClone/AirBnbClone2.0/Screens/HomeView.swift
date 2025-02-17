//
//  HomeView.swift
//  LetsTools
//
//  Created by Maraz Hossain on 2/17/25.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack {
            NavigationStack {
                ZStack {
                    ScrollView {
                        VStack(spacing: 24) {
                            // search
                            SearchView()

                            // tabs

                            // list items
                        }
                        .padding(.vertical)
                    }
                }
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .principal) {
                        HStack(spacing: 12) {
                            Image(systemName: "play.tv")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 18, height: 18)

                            Text("Replay welcome tour")
                                .font(.headline)
                                .underline(true)
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    HomeView()
}

struct SearchView: View {
    var body: some View {
        HStack(spacing: 20) {
            // search
            HStack {
                Image(systemName: "magnifyingglass")
                TextField("Start your search", text: .constant(""))
            }
            .padding(.horizontal)
            .frame(maxWidth: .infinity)
            .frame(height: 50)
            .background(Color.systemWhite)
            .clipShape(Capsule())
            .shadow(color: Color.systemGray4, radius: 10)

            // filter icon
            Button {} label: {
                ZStack {
                    Circle()
                        .fill(.clear)
                        .frame(width: 45, height: 45)
                        .overlay(Circle().stroke(Color.systemGray4, lineWidth: 1))
                    Image(systemName: "slider.horizontal.3")
                }
                .foregroundStyle(Color.systemBlack)
            }
        }
        .padding(.horizontal)
    }
}
