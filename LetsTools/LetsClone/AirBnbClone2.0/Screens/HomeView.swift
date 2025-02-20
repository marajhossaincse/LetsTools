//
//  HomeView.swift
//  LetsTools
//
//  Created by Maraz Hossain on 2/17/25.
//

import Kingfisher
import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack {
            NavigationStack {
                ZStack(alignment: .bottom) {
                    ScrollView {
                        VStack(spacing: 24) {
                            // search
                            SearchView()

                            // tabs
                            TabsContentView()

                            // list items
                            ListBookingView()
                        }
                        .padding(.vertical)
                    }
                    Button {} label: {
                        HStack {
                            Text("Map")
                                .font(.headline)

                            Image(systemName: "map.fill")
                        }
                        .foregroundStyle(Color.systemWhite)
                        .frame(width: 120, height: 55)
                        .background(Color.systemBlack.opacity(0.9))
                        .clipShape(Capsule())
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

struct TabsContentView: View {
    /// list tabs
    var tabs: [AirBnbTabResponse] = airBnbTabData
    /// state index
    @State private var selectedIndex: Int = 0
    /// animation
    @Namespace private var animation

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack(spacing: 0) {
                ForEach(tabs.indices, id: \.self) { index in
                    Button {
                        withAnimation {
                            selectedIndex = index
                        }
                    } label: {
                        VStack(spacing: 14) {
                            // icon and text
                            VStack(spacing: 6) {
                                KFImage(URL(string: tabs[index].imageUrl))
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 26, height: 26)

                                Text(tabs[index].title)
                                    .font(.subheadline)
                                    .fontWeight(selectedIndex == index ? .semibold : .regular)
                                    .foregroundStyle(Color.systemBlack)
                            }

                            // line vertical
                            ZStack {
                                Rectangle()
                                    .fill(Color.systemGray4)
                                    .frame(height: 1.5)

                                if selectedIndex == index {
                                    Rectangle()
                                        .fill(Color.primary)
                                        .frame(height: 1.5)
                                        .matchedGeometryEffect(id: "underline", in: animation)
                                }
                            }
                        }
                    }
                    .frame(width: 100)
                }
            }
            .padding(.horizontal)
        }
    }
}

struct ListBookingView: View {
    var bookingDatas: [BookingResponse] = bookingsData

    var body: some View {
        LazyVStack(spacing: 24) {
            ForEach(bookingDatas) { booking in
                NavigationLink(destination: DetailView(booking: booking)) {
                    BookingRowView(booking: booking)
                }
            }
        }
        .padding(.horizontal)
    }
}

struct BookingRowView: View {
    var booking: BookingResponse
    var width = UIScreen.main.bounds.width

    @State private var selectedIndex: Int = 0

    var body: some View {
        VStack {
            // images slider and favorite icon
            ZStack(alignment: .top) {
                // image slider
                TabView(selection: $selectedIndex) {
                    ForEach(booking.placeImages.indices, id: \.self) { index in
                        KFImage(URL(string: booking.placeImages[index]))
                            .resizable()
                            .scaledToFill()
                            .frame(width: width, height: 350)
                            .clipShape(RoundedRectangle(cornerRadius: 12))
                            .tag(booking.placeImages[index])
                    }
                }
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                .frame(height: 350)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                // indicator dot
                VStack {
                    Spacer()
                    HStack {
                        ForEach(0 ..< booking.placeImages.count, id: \.self) { index in
                            Circle()
                                .fill(index == selectedIndex ? .white : .gray)
                                .frame(width: 8, height: 8)
                        }
                    }
                    .padding(.bottom, 20)
                }
                // favorite icon
                HStack {
                    Button {} label: {
                        Text("Guest favorite")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .padding(.horizontal)
                            .padding(.vertical, 6)
                            .background(.white)
                            .foregroundStyle(Color.black)
                            .clipShape(Capsule())
                    }
                    Spacer()
                    Image(systemName: booking.isFavorite ? "heart.fill" : "heart")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 22, height: 22)
                        .foregroundStyle(booking.isFavorite ? Color.systemRed : .black)
                }
                .padding()
            }
            // content info
            VStack(spacing: 0) {
                HStack {
                    Text(booking.name)
                        .font(.headline)

                    Spacer()
                    HStack(spacing: 6) {
                        Image(systemName: "star.fill")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 15, height: 15)

                        Text(booking.rating)
                            .font(.headline)
                            .fontWeight(.regular)
                    }
                }

                Text(booking.mileAway)
                    .font(.subheadline)
                    .frame(maxWidth: .infinity, alignment: .leading)

                Text(booking.date)
                    .font(.subheadline)
                    .frame(maxWidth: .infinity, alignment: .leading)

                Text(booking.price)
                    .font(.headline)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .foregroundStyle(Color.systemBlack)
        }
    }
}
