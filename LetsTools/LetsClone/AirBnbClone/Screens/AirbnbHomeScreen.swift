//
//  AirbnbHomeScreen.swift
//  LetsTools
//
//  Created by Maraz Hossain on 2/7/25.
//

import Kingfisher
import SwiftUI

struct AirbnbHomeScreen: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    SearchBnbView()

                    BnbCategoryView()

                    SiteView()
                }
                .background(.red)
            }
            .background(.yellow)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    HStack(spacing: 18) {
                        Image(systemName: "play.tv")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 22, height: 22)

                        Text("Replay welcome tour.")
                            .font(.footnote)
                            .fontWeight(.semibold)
                            .underline()
                    }
                }
            }
        }
    }
}

#Preview {
    NavigationStack {
        AirbnbHomeScreen()
    }
}

struct SearchBnbView: View {
    @State private var searchedText: String = ""

    var body: some View {
        HStack {
            HStack(spacing: 10) {
                Button {} label: {
                    Image(systemName: "magnifyingglass")
                        .resizable()
                        .scaledToFill()
                        .foregroundStyle(Color.black)
                        .frame(width: 18, height: 18)
                }

                TextField("Start your search", text: $searchedText)
                    .font(.headline)
                    .fontWeight(.medium)
            }
            .frame(maxWidth: .infinity)
            .padding(.vertical, 16)
            .padding(.horizontal, 12)
            .background(Capsule().fill(Color.systemWhite))
            .shadow(
                color: Color.systemGray.opacity(0.5),
                radius: 4
            )
            .padding(.trailing)

            Image(systemName: "slider.horizontal.3")
                .resizable()
                .scaledToFill()
                .frame(width: 18, height: 18)
                .padding(14)
                .foregroundStyle(Color.systemGray)
                .background(Circle().fill(Color.clear))
                .overlay(
                    Circle().stroke(Color.systemGray.opacity(0.5), lineWidth: 1)
                )
        }
        .padding(.horizontal)
    }
}

struct BnbCategoryView: View {
    var categories = bnbCategories
    @State private var selectedIndex = 0

    var width = UIScreen.main.bounds.width / 5
    @Namespace private var animation

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            VStack(spacing: 0) {
                HStack(alignment: .bottom, spacing: 0) {
                    ForEach(categories.indices, id: \.self) { index in

                        Button {
                            withAnimation {
                                selectedIndex = index
                            }
                        } label: {
                            VStack(spacing: 12) {
                                Image(systemName: categories[index].icon)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 24, height: 24)
                                    .foregroundStyle(Color.label)

                                Text(categories[index].name)
                                    .font(.subheadline)
                                    .fontWeight(.regular)
                                    .foregroundStyle(Color.label)

                                ZStack {
                                    Rectangle()
                                        .fill(.gray.opacity(0.4))
                                        .frame(width: width, height: 2)

                                    if selectedIndex == index {
                                        Rectangle()
                                            .fill(.black)
                                            .frame(width: width, height: 2)
                                            .matchedGeometryEffect(id: "underline", in: animation)
                                    }
                                }
                            }
                        }
                    }
                }
                .padding(.top)
            }
        }
        .padding(.leading)
    }
}

struct SiteView: View {
    @State private var currentIndex = 0
    var sites: [BnbSitesResponse] = sitesData

    var body: some View {
        VStack {
            // image

            ForEach(sites) { site in
                ZStack(alignment: .top) {
                    Image("")
                        .resizable()
                        .scaledToFill()
                        .frame(maxWidth: .infinity)
                        .background(.green)
                        .cornerRadius(14)

                    HStack(alignment: .center) {
                        Text("Guest favorite")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .padding(.horizontal)
                            .padding(.vertical, 10)
                            .foregroundStyle(Color.systemBlack)
                            .background(Capsule().fill(Color.systemWhite))

                        Spacer()

                        if site.isFavorite {
                            Image(systemName: "heart.fill")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 20, height: 20)
                                .foregroundColor(Color.systemRed)
                        } else {
                            Image(systemName: "heart")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 20, height: 20)
                                .foregroundColor(Color.systemBlack)
                        }
                    }
                    .padding(.top)
                    .padding(.horizontal)
                }

                VStack(alignment: .leading, spacing: 6) {
                    HStack(spacing: 8) {
                        Text(site.name)
                            .font(.headline)

                        Spacer()

                        Image(systemName: "star.fill")
                        Text(site.rating)
                    }
                    Text(site.distance)
                        .font(.subheadline)

                    Text(site.availabilityDate)
                        .font(.subheadline)

                    Text("$\(site.price) night")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.vertical, 8)
            }
        }
        .padding(.horizontal)
        .padding(.vertical)
    }
}
