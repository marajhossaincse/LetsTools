//
//  EatsScreen.swift
//  LetsTools
//
//  Created by Maraz Hossain on 1/21/25.
//

import SwiftUI

struct UberEatsScreen: View {
    var body: some View {
        VStack(spacing: 0) {
            DeliveryAddressView()

            EatsSearchBarView()

            FoodOptionsView()
        }
    }
}

#Preview {
    UberEatsScreen()
}

struct DeliveryAddressView: View {
    var body: some View {
        HStack(spacing: 0) {
            VStack(alignment: .leading, spacing: 0) {
                Text("Deliver Now")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundStyle(Color.black.opacity(0.5))

                Text("123 Lorem Ipsum St...")
                    .font(.headline)
                    .fontWeight(.semibold)
                    .lineLimit(1)
            }

            Spacer()

            Image(systemName: "chevron.down")
                .padding(.horizontal, 20)

            Spacer()

            HStack(alignment: .center, spacing: 8) {
                Text("Delivery")
                    .font(.headline)
                    .fontWeight(.semibold)

                Image(systemName: "chevron.down")
                    .resizable()
                    .fontWeight(.semibold)
                    .scaledToFit()
                    .frame(width: 12, height: 12)
            }
            .padding()
            .background(Capsule().fill(.gray.opacity(0.3)))

            Image(systemName: "cart")
                .resizable()
                .fontWeight(.semibold)
                .scaledToFit()
                .frame(width: 20, height: 20)
                .padding(.leading)
        }
        .padding(.horizontal)
    }
}

struct EatsSearchBarView: View {
    @State var searchedText: String = ""
    var body: some View {
        ZStack {
            HStack(spacing: 8) {
                Button {} label: {
                    Image(systemName: "magnifyingglass")
                        .resizable()
                        .scaledToFill()
                        .foregroundStyle(Color.black)
                        .frame(width: 20, height: 20)
                }

                TextField("Search UberEats", text: $searchedText)
                    .font(.headline)
                    .fontWeight(.semibold)

                Spacer()
            }
        }
        .frame(maxWidth: .infinity)
        .padding(.vertical, 10)
        .padding(.horizontal)
        .background(Capsule().fill(.gray.opacity(0.3)))
        .padding(.horizontal)
        .padding(.vertical)
    }
}

struct FoodOptionsView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                VStack {
                    Image(systemName: "bolt.fill")
                        .resizable()
                        .foregroundStyle(.yellow)
                        .scaledToFill()
                        .frame(width: 20, height: 20)
                        .padding(8)

                    Text("Bolt")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                }
                .padding(.horizontal)

                VStack {
                    Image(systemName: "drop.fill")
                        .resizable()
                        .foregroundStyle(.blue)
                        .scaledToFill()
                        .frame(width: 20, height: 20)
                        .padding(8)

                    Text("Drop")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                }
                .padding(.horizontal)

                VStack {
                    Image(systemName: "flame.fill")
                        .resizable()
                        .foregroundStyle(.orange)
                        .scaledToFill()
                        .frame(width: 20, height: 20)
                        .padding(8)

                    Text("Flame")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                }
                .padding(.horizontal)

                VStack {
                    Image(systemName: "snowflake")
                        .resizable()
                        .foregroundStyle(.blue.opacity(0.5))
                        .scaledToFill()
                        .frame(width: 20, height: 20)
                        .padding(8)

                    Text("Snowflake")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                }
                .padding(.horizontal)

                VStack {
                    Image(systemName: "leaf.fill")
                        .resizable()
                        .foregroundStyle(.green)
                        .scaledToFill()
                        .frame(width: 20, height: 20)
                        .padding(8)

                    Text("Leaf")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                }
                .padding(.horizontal)

                VStack {
                    Image(systemName: "atom")
                        .resizable()
                        .foregroundStyle(.gray)
                        .scaledToFill()
                        .frame(width: 20, height: 20)
                        .padding(8)

                    Text("Atom")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                }
                .padding(.horizontal)
            }
        }
        .padding(.vertical)

        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 14) {
                Button {} label: {
                    HStack {
                        Image(systemName: "tag")
                        Text("Offers")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                    }
                    .padding(.horizontal)
                    .padding(.vertical, 8)
                    .background(Capsule().fill(.gray.opacity(0.15)))
                }

                Button {} label: {
                    HStack {
                        Text("Delivery fee")
                            .font(.subheadline)
                            .fontWeight(.semibold)

                        Image(systemName: "chevron.down")
                    }
                    .padding(.horizontal)
                    .padding(.vertical, 8)
                    .background(Capsule().fill(.gray.opacity(0.15)))
                }

                Button {} label: {
                    Text("Under 30 mins")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .padding(.horizontal)
                        .padding(.vertical, 8)
                        .background(Capsule().fill(.gray.opacity(0.15)))
                }
            }
        }
        .foregroundStyle(Color.black)
        .padding(.horizontal)
    }
}
