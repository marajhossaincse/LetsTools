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

                HostDetailsView()

                Divider()
                    .padding()

                SiteFacilitiesView()

                BnbBedroomView()

                BnbCommoditiesView()

                BnbReviewsView()

                Button {} label: {
                    Text("Show all 101 reviews")
                        .font(.headline)
                        .fontWeight(.semibold)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .foregroundStyle(Color.systemBlack)
                        .overlay(
                            RoundedRectangle(cornerRadius: 12)
                                .stroke()
                                .fill(Color.systemGray)
                        )
                        .padding(.horizontal)
                }
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
        .navigationBarBackButtonHidden(true)
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
    @Environment(\.dismiss) var dismiss

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
                    Button {
                        dismiss()
                    } label: {
                        Image(systemName: "chevron.left")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 8, height: 8)
                            .foregroundStyle(Color.systemBlack)
                            .padding(10)
                            .background(Circle().fill(Color.systemWhite))
                    }

                    Spacer()

                    Image(systemName: "square.and.arrow.up")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 16, height: 16)
                        .foregroundStyle(Color.systemBlack)
                        .padding(10)
                        .background(Circle().fill(Color.systemWhite))

                    if site.isFavorite {
                        Image(systemName: "heart.fill")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 16, height: 16)
                            .foregroundColor(Color.systemRed)
                            .padding(10)
                            .background(Circle().fill(Color.systemWhite))
                    } else {
                        Image(systemName: "heart")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 16, height: 16)
                            .foregroundColor(Color.systemBlack)
                            .padding(10)
                            .background(Circle().fill(Color.systemWhite))
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
            .padding(.vertical)
        }
        .padding(.horizontal)
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct HostDetailsView: View {
    var body: some View {
        HStack {
            KFImage(URL(string: "https://picsum.photos/200"))
                .resizable()
                .scaledToFill()
                .frame(width: 55, height: 55)
                .clipShape(Circle())

            VStack(alignment: .leading) {
                Text("Hosted by John Doe")
                    .font(.headline)
                    .fontWeight(.semibold)

                Text("Superhost - 5 years on AirBnb")
                    .font(.footnote)
            }
            .padding(.leading, 12)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.horizontal)
    }
}

struct SiteFacilitiesView: View {
    var body: some View {
        VStack(spacing: 20) {
            VStack(alignment: .leading, spacing: 6) {
                HStack {
                    Image(systemName: "table.furniture")
                        .font(.headline)
                        .fontWeight(.semibold)
                        .frame(width: 24, height: 24)

                    Text("Dedicated workspace")
                        .font(.headline)
                        .fontWeight(.semibold)
                }

                Text("A common area with wifi that's well-suited for working.")
                    .font(.footnote)
                    .padding(.leading, 35)
            }

            VStack(alignment: .leading, spacing: 6) {
                HStack {
                    Image(systemName: "lamp.table")
                        .font(.headline)
                        .fontWeight(.semibold)
                        .frame(width: 24, height: 24)

                    Text("Self check-in")
                        .font(.headline)
                        .fontWeight(.semibold)
                }

                Text("Check yourself in with the smart lock.")
                    .font(.footnote)
                    .padding(.leading, 35)
            }
            .frame(maxWidth: .infinity, alignment: .leading)

            VStack(alignment: .leading, spacing: 6) {
                HStack {
                    Image(systemName: "door.left.hand.closed")
                        .font(.headline)
                        .fontWeight(.semibold)
                        .frame(width: 24, height: 24)

                    Text("Ozlem is a Superhost")
                        .font(.headline)
                        .fontWeight(.semibold)
                }

                Text("Superhosts are experienced, highly rated Hosts.")
                    .font(.footnote)
                    .padding(.leading, 35)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
        }
        .padding(.horizontal)
    }
}

struct BnbBedroomView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Where you'll sleep")
                .font(.title3)
                .fontWeight(.bold)

            HStack {
                VStack(alignment: .leading) {
                    KFImage(URL(string: "https://picsum.photos/200"))
                        .resizable()
                        .scaledToFill()
                        .frame(width: 180, height: 120)
                        .clipped()
                        .cornerRadius(12)

                    Text("Bedroom 1")
                        .font(.headline)

                    Text("1 king bed")
                        .font(.subheadline)
                }

                VStack(alignment: .leading) {
                    KFImage(URL(string: "https://picsum.photos/200"))
                        .resizable()
                        .scaledToFill()
                        .frame(width: 180, height: 120)
                        .clipped()
                        .cornerRadius(12)

                    Text("Bedroom 2")
                        .font(.headline)
                    Text("1 queen bed")
                        .font(.subheadline)
                }
            }
        }
        .padding(.horizontal)
        .padding(.vertical, 8)
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct BnbCommoditiesView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("What this place offers")
                .font(.title3)
                .fontWeight(.bold)

            HStack(spacing: 20) {
                Image(systemName: "lock")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 16, height: 16)
                    .fontWeight(.semibold)

                Text("Lock on bedroom door.")
                    .font(.headline)
                    .fontWeight(.regular)
            }

            HStack(spacing: 20) {
                Image(systemName: "wifi")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 16, height: 16)
                    .fontWeight(.semibold)

                Text("Wi-Fi")
                    .font(.headline)
                    .fontWeight(.regular)
            }

            HStack(spacing: 20) {
                Image(systemName: "car")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 16, height: 16)
                    .fontWeight(.semibold)

                Text("Free parking on premises.")
                    .font(.headline)
                    .fontWeight(.regular)
            }

            HStack(spacing: 20) {
                Image(systemName: "camera")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 16, height: 16)
                    .fontWeight(.semibold)

                Text("Exterior security cameras on property.")
                    .font(.headline)
                    .fontWeight(.regular)
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.horizontal)
        .padding(.vertical, 8)
    }
}

struct BnbReviewsView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(0 ..< 5, id: \.self) { _ in
                    CommentComponentView()
                }
            }
        }
    }
}

struct CommentComponentView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack(spacing: 0) {
                ForEach(0 ..< 5, id: \.self) { _ in
                    Image(systemName: "star.fill")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 12, height: 12)
                        .padding(.horizontal, 1)
                }
            }
            Text("2 weeks ago")

            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris eget lacus sit amet arcu vulputate sollicitudin. Duis luctus leo ultrices, fermentum lorem nec, cursus libero. Etiam maximus blandit est, sit amet sodales turpis dignissim a. Proin luctus sapien felis, non euismod turpis semper vitae. Suspendisse volutpat feugiat tincidunt. Phasellus non.")

            HStack(spacing: 20) {
                KFImage(URL(string: "https://picsum.photos/200"))
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40, height: 40)
                    .clipShape(Circle())

                VStack(alignment: .leading) {
                    Text("John")
                        .font(.headline)
                        .fontWeight(.semibold)

                    Text("5 years on Airbnb")
                        .font(.subheadline)
                }
            }
            .padding(.top)
        }
        .padding()
        .frame(width: UIScreen.main.bounds.width - 30)
        .overlay {
            RoundedRectangle(cornerRadius: 12)
                .stroke(lineWidth: 1)
                .fill(Color.systemGray4)
        }
        .frame(height: 250)
        .padding(.horizontal)
    }
}
