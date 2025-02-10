//
//  AirbnbDetailsScreen.swift
//  LetsTools
//
//  Created by Maraz Hossain on 2/9/25.
//

import Kingfisher
import SwiftUI

struct AirbnbDetailsScreen: View {
    var site: BnbSitesResponse = .init(
        name: "Luxury Beachfront Villa.",
        images: [
            "https://picsum.photos/200?random==1",
            "https://picsum.photos/200?random==2",
            "https://picsum.photos/200?random==3",
            "https://picsum.photos/200?random==4"
        ],
        distance: "56 miles away",
        rating: "4.99",
        availabilityDate: "Feb 4-9",
        price: "290",
        isFavorite: true
    )

    var body: some View {
        ScrollView {
            VStack {
                SiteGalleryView(site: site)
                SiteDetailsView(site: site)
            }
        }
        .toolbar {
            ToolbarItem(placement: .status) {
                HStack {
                    Text("$\(site.price) night")
                        .font(.headline)
                        .fontWeight(.semibold)
                        .underline()

                    Spacer()

                    Button {} label: {
                        Text("Reserve")
                            .font(.headline)
                            .fontWeight(.semibold)
                            .foregroundStyle(Color.systemWhite)
                            .padding()
                            .background(RoundedRectangle(cornerRadius: 8).fill(Color.systemPink))
                    }
                }
                .padding(.horizontal, 20)
                .padding(.top)
                .frame(width: UIScreen.main.bounds.width)
            }
        }
    }
}

#Preview {
    AirbnbDetailsScreen(site: BnbSitesResponse(
        name: "Luxury Beachfront Villa.",
        images: [
            "https://picsum.photos/200?random==1",
            "https://picsum.photos/200?random==2",
            "https://picsum.photos/200?random==3",
            "https://picsum.photos/200?random==4"
        ],
        distance: "56 miles away",
        rating: "4.99",
        availabilityDate: "Feb 4-9",
        price: "290",
        isFavorite: true
    ))
}

struct SiteGalleryView: View {
    var site: BnbSitesResponse

    var body: some View {
        VStack {
            ZStack(alignment: .topLeading) {
                KFImage(URL(string: "https://picsum.photos/200"))
                    .resizable()
                    .scaledToFill()
                    .frame(maxWidth: .infinity)
                    .frame(height: 200)

                HStack {
                    Image(systemName: "chevron.left")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 8, height: 8)
                        .foregroundStyle(Color.systemBlack)
                        .padding(10)
                        .background(Circle().fill(Color.systemWhite))

                    Spacer()

                    Image(systemName: "square.and.arrow.up")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 16, height: 16)
                        .foregroundStyle(Color.systemBlack)
                        .padding(10)
                        .background(Circle().fill(Color.systemWhite))
                        .padding(.horizontal)

                    if site.isFavorite {
                        Image(systemName: "heart.fill")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 16, height: 16)
                            .foregroundColor(Color.systemRed)
                            .padding(10)
                            .background(Circle().fill(Color.systemWhite))
                            .padding(.horizontal)
                    } else {
                        Image(systemName: "heart")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 16, height: 16)
                            .foregroundColor(Color.systemBlack)
                            .padding(10)
                            .background(Circle().fill(Color.systemWhite))
                            .padding(.horizontal)
                    }
                }
                .padding(.horizontal)
            }
            Text(site.name)
                .font(.title2)
                .fontWeight(.semibold)
                .padding(.top, 100)
                .padding()
        }
    }
}

struct SiteDetailsView: View {
    var site: BnbSitesResponse

    var body: some View {
        VStack(alignment: .leading) {
            Text("Entire cabin in Mountain Retreat Cabin")
                .font(.subheadline)
                .fontWeight(.semibold)

            Text("6 guests - 3 bedrooms - 3 beds - 2 baths")
                .font(.caption)
                .fontWeight(.light)

            HStack(spacing: 28) {
                VStack(spacing: 2) {
                    Text(site.rating)
                        .font(.headline)
                        .fontWeight(.semibold)

                    HStack(spacing: 0) {
                        ForEach(0 ..< 5, id: \.self) { _ in
                            Image(systemName: "star.fill")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 12, height: 12)
                                .padding(.horizontal, 1)
                        }
                    }
                }
                Rectangle()
                    .frame(width: 1, height: 32)

                Text("Guest favorite")
                    .font(.headline)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)

                Rectangle()
                    .frame(width: 1, height: 32)

                VStack {
                    Text("101")
                        .font(.headline)
                        .fontWeight(.semibold)

                    Text("Reviews")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .foregroundStyle(Color.systemGray)
                        .underline()
                }
            }
            .frame(maxWidth: .infinity)
            .padding()
            .overlay {
                RoundedRectangle(cornerRadius: 8)
                    .stroke(Color.gray, lineWidth: 1)
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.horizontal)
    }
}
