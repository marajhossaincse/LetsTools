//
//  RidesScreen.swift
//  LetsTools
//
//  Created by Maraz Hossain on 1/21/25.
//

import SwiftUI

struct UberRidesScreen: View {
    var body: some View {
        SearchBarView()

        PastSearchesView()

        SuggestionsView()
    }
}

#Preview {
    UberRidesScreen()
}

/// destination search bar
struct SearchBarView: View {
    @State var searchedText: String = ""

    var body: some View {
        ZStack {
            HStack(spacing: 8) {
                Button {} label: {
                    Image(systemName: "magnifyingglass")
                        .resizable()
                        .scaledToFill()
                        .foregroundStyle(Color.black)
                        .frame(width: 28, height: 28)
                }

                TextField("Where to?", text: $searchedText)
                    .font(.headline)
                    .fontWeight(.semibold)

                Spacer()

                HStack(alignment: .center, spacing: 8) {
                    Image(systemName: "clock.fill")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 20, height: 20)

                    Text("Now")
                        .font(.headline)
                        .fontWeight(.semibold)

                    Image(systemName: "chevron.down")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 12, height: 12)
                }
                .padding()
                .background(Capsule().fill(.white))
            }
        }
        .frame(maxWidth: .infinity)
        .padding(.vertical, 8)
        .padding(.horizontal, 8)
        .background(Capsule().fill(.gray.opacity(0.3)))
        .padding(.horizontal)
    }
}

/// past searches
struct PastSearchesView: View {
    var pastSearches = rideHistoryData

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            ForEach(pastSearches, id: \.self) { pastSearch in
                HStack(spacing: 12) {
                    Image(systemName: "clock.fill")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 20, height: 20)

                    VStack(alignment: .leading, spacing: 4) {
                        Text(pastSearch.location)
                            .font(.headline)
                            .fontWeight(.semibold)

                        Text(pastSearch.streetName)
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .foregroundStyle(Color.black.opacity(0.5))

                        Divider()
                            .padding(.top, 6)
                    }
                }
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.horizontal)
        .padding(.vertical, 4)
    }
}

/// suggestions
struct SuggestionsView: View {
    let screenWidth = UIScreen.main.bounds.width

    var body: some View {
        VStack(spacing: 0) {
            HStack(spacing: 0) {
                Text("Suggestions")
                    .font(.headline)
                    .fontWeight(.semibold)

                Spacer()

                Text("See All")
                    .font(.subheadline)
                    .fontWeight(.semibold)
            }
            .padding(.vertical)

            HStack(alignment: .center) {
                // ride
                Button {} label: {
                    VStack {
                        Image(systemName: "car.side")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 20, height: 20)
                            .padding(.bottom, 8)

                        Text("Ride")
                            .font(.caption)
                            .fontWeight(.semibold)
                    }
                    .frame(width: 70, height: 70)
                    .padding(8)
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(8)
                    .foregroundStyle(Color.primary)
                }

                // 2-wheels
                Button {} label: {
                    VStack {
                        Image(systemName: "bicycle")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 20, height: 20)
                            .padding(.bottom, 8)

                        Text("2-Wheels")
                            .font(.caption)
                            .fontWeight(.semibold)
                    }
                    .frame(width: 70, height: 70)
                    .padding(8)
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(8)
                    .foregroundStyle(Color.primary)
                }

                // rental cars
                ZStack(alignment: .top) {
                    Text("Promo")
                        .font(.headline)
                        .fontWeight(.semibold)
                        .padding(6)
                        .foregroundStyle(Color.white)
                        .background(Color.green)
                        .cornerRadius(6)
                        .offset(x: 0, y: -26)

                    Button {} label: {
                        VStack {
                            Image(systemName: "key.horizontal")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 20, height: 20)
                                .padding(.bottom, 8)

                            Text("Rental Cars")
                                .lineLimit(1)
                                .font(.caption)
                                .fontWeight(.semibold)
                        }
                        .frame(width: 70, height: 70)
                        .padding(8)
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(8)
                        .foregroundStyle(Color.primary)
                    }
                }

                Button {} label: {
                    // reserves
                    VStack {
                        Image(systemName: "calendar.badge.clock")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 30, height: 30)
                            .padding(.bottom, 8)

                        Text("Reserve")
                            .font(.caption)
                            .fontWeight(.semibold)
                    }
                    .frame(width: 70, height: 70)
                    .padding(8)
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(8)
                    .foregroundStyle(Color.primary)
                }
            }
        }
        .padding(.horizontal)
    }
}
