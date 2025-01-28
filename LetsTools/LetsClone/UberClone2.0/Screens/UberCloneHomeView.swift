//
//  UberCloneHomeView.swift
//  LetsTools
//
//  Created by Maraz Hossain on 1/26/25.
//

import Kingfisher
import SwiftUI

struct UberCloneHomeView: View {
    var tabs: [TabResponse] = tabsData
    @State private var selectedIndex = 1
    // for smooth animation
    @Namespace private var animation
    var width = UIScreen.main.bounds.width / 2

    var body: some View {
        NavigationStack {
            ScrollView {
                // content
                VStack {
                    if selectedIndex == 0 {
                        // rides
                        VStack(spacing: 10) {
                            // search
                            SearchRidesView()

                            // history
                            RidesHistoryView()

                            // suggestion
                            SuggestionsView()

                            // ads
                            AdsView()
                        }
                    } else {
                        // eats
                        VStack(spacing: 20) {
                            // delivery
                            DeliveryView()

                            // search
                            SearchUberEatsView()

                            // category
                            CategoryView()

                            // featured
                            FeaturedRestaurantView()

                            Divider()

                            // places
                            PlaceYouMightLikeView()
                        }
                    }
                }
                .padding(.vertical, 16)
            }
            // title and tabs
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    HStack(spacing: 0) {
                        ForEach(tabs.indices, id: \.self) { index in
                            Button {
                                withAnimation {
                                    selectedIndex = index
                                }
                            } label: {
                                VStack(spacing: 6) {
                                    // icon and text
                                    HStack(spacing: 12) {
                                        Image(tabs[index].imageUrl)
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: 38, height: 38)
                                            .background(.gray.opacity(0.5))

                                        Text(tabs[index].title)
                                            .font(.title3)
                                            .fontWeight(.semibold)
                                            .foregroundStyle(.black)
                                    }
                                    // border line full width and border underliner animation
                                    ZStack {
                                        Rectangle()
                                            .fill(.gray.opacity(0.4))
                                            .frame(width: width, height: 3)
                                        if selectedIndex == index {
                                            Rectangle()
                                                .fill(.black)
                                                .frame(width: width, height: 3)
                                                .matchedGeometryEffect(id: "underline", in: animation)
                                        }
                                    }
                                }
                            }
                            .frame(width: width)
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    UberCloneHomeView()
}

struct SearchRidesView: View {
    var body: some View {
        HStack(spacing: 12) {
            // icon
            Image(systemName: "magnifyingglass")
                .resizable()
                .scaledToFill()
                .frame(width: 22, height: 22)

            // textfield
            TextField("Where to?", text: .constant(""))
                .font(.headline)

            Spacer()

            // button
            HStack(spacing: 10) {
                Image(systemName: "clock.fill")
                    .foregroundStyle(.black)

                Text("Now")
                    .font(.headline)

                Image(systemName: "chevron.down")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 6, height: 6)
                    .foregroundStyle(.black)
                    .fontWeight(.semibold)
                    .padding(.top, 2)
            }
            .frame(width: 110)
            .frame(height: 40)
            .background(Color.uberWhiteColor)
            .clipShape(Capsule())
        }
        .padding(.vertical, 10)
        .padding(.horizontal)
        .padding(.trailing, 10)
        .frame(maxWidth: .infinity)
        .frame(height: 55)
        .background(Color.uberTextFieldColor)
        .clipShape(Capsule())
        .padding(.horizontal)
    }
}

struct RidesHistoryView: View {
    var historyData: [RidesHistoryResponse] = ridesHistoryData
    var body: some View {
        LazyVStack(spacing: 12) {
            ForEach(historyData) { history in
                RidesHistoryRowView(history: history)
            }
        }
    }
}

struct RidesHistoryRowView: View {
    var history: RidesHistoryResponse

    var body: some View {
        HStack(spacing: 20) {
            Image(systemName: "clock.fill")
                .resizable()
                .scaledToFill()
                .frame(width: 20, height: 20)

            // content
            VStack(alignment: .leading, spacing: 0) {
                Text(history.location)
                    .font(.headline)
                Text(history.streetName)
                    .font(.footnote)
                    .foregroundStyle(.black.opacity(0.7))
                Divider()
                    .padding(.top, 10)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
        }
        .padding(.horizontal)
    }
}

struct SuggestionsView: View {
    var suggestionData: [RidesSuggestionResponse] = ridesSuggestionsData

    var body: some View {
        VStack {
            // title and see all
            HStack {
                Text("Suggestion")
                    .font(.title3)
                    .fontWeight(.semibold)
                Spacer()
                Text("See All")
                    .font(.subheadline)
                    .fontWeight(.semibold)
            }
            // list item
            HStack {
                ForEach(suggestionData) { suggestion in
                    SuggestionRowView(suggestion: suggestion)
                }
            }
        }
        .padding(.horizontal)
        .padding(.vertical, 14)
    }
}

struct SuggestionRowView: View {
    var suggestion: RidesSuggestionResponse
    var size = (UIScreen.main.bounds.width / 4) - 14

    var body: some View {
        Button {} label: {
            ZStack(alignment: .top) {
                // item
                VStack {
                    Image(suggestion.imageUrl)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 55, height: 40)

                    Text(suggestion.name)
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .foregroundStyle(.black)
                }
                .frame(width: size, height: size + 8)
                .background(Color.uberCardColor)
                .clipShape(RoundedRectangle(cornerRadius: 12))
                // badge
                if suggestion.isPromoted {
                    Text("Promo")
                        .font(.footnote)
                        .foregroundStyle(Color.uberWhiteColor)
                        .padding(.vertical, 1)
                        .padding(.horizontal, 6)
                        .background(Color.uberPrimaryColor)
                        .clipShape(RoundedRectangle(cornerRadius: 6))
                        .offset(x: 0, y: -20)
                }
            }
        }
    }
}

#warning("Timestamp: 10:40")
struct AdsView: View {
    var adsData: [RidesAdsResponse] = ridesAdsData
    var width = UIScreen.main.bounds.width

    var body: some View {
        // ads scrollable content
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack(spacing: 12) {
                ForEach(adsData) { ads in
                    Image(ads.imageUrl)
                        .resizable()
                        .scaledToFill()
                        .background(Color.gray)
                        .frame(width: width - 50, height: 150)
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                }
            }
            .padding(.horizontal)
        }
    }
}

struct DeliveryView: View {
    var location: RideHistoryResponse = rideHistoryData[0]
    var body: some View {
        HStack {
            // delivery now
            HStack {
                VStack(alignment: .leading, spacing: 0) {
                    Text("Delivery now")
                        .font(.subheadline)
                        .foregroundStyle(.black.opacity(0.7))
                    Text("\(location.streetName)...")
                        .font(.subheadline)
                }
                .fontWeight(.semibold)
                Spacer()
                Image(systemName: "chevron.down")
                    .fontWeight(.semibold)
            }
            .frame(width: 160)

            Spacer()

            // delivery button and cart icon
            HStack(spacing: 20) {
                // button
                Button {} label: {
                    HStack(spacing: 14) {
                        Text("Delivery")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .foregroundStyle(.black)

                        Image(systemName: "chevron.right")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 7, height: 7)
                            .foregroundStyle(.black)
                            .fontWeight(.semibold)
                            .padding(.top, 2)
                    }
                    .padding(.horizontal, 16)
                    .frame(height: 40)
                    .background(Color.uberCardColor)
                    .clipShape(Capsule())
                }

                Button {} label: {
                    Image(systemName: "cart")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 20, height: 20)
                        .foregroundStyle(.black)
                        .fontWeight(.semibold)
                }
            }
        }
        .padding(.horizontal)
    }
}

struct SearchUberEatsView: View {
    var body: some View {
        HStack(spacing: 12) {
            // icon
            Image(systemName: "magnifyingglass")
                .resizable()
                .scaledToFill()
                .frame(width: 22, height: 22)

            // textfield
            TextField("Search UberEats", text: .constant(""))
                .font(.headline)
        }
        .padding(.vertical, 10)
        .padding(.horizontal)
        .padding(.trailing, 10)
        .frame(maxWidth: .infinity)
        .frame(height: 55)
        .background(Color.uberTextFieldColor)
        .clipShape(Capsule())
        .padding(.horizontal)
    }
}

struct CategoryView: View {
    var categoryDatas: [EatsCategoryResponse] = eatsCategoriesData

    var body: some View {
        VStack(spacing: 16) {
            // category list
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack(spacing: 20) {
                    ForEach(categoryDatas) { category in
                        Button {} label: {
                            VStack(spacing: 20) {
                                // image
                                KFImage(URL(string: category.imageUrl))
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 60, height: 60)
                                    .background(Color.gray)

                                // text
                                Text(category.name)
                                    .font(.subheadline)
                                    .fontWeight(.semibold)
                                    .foregroundStyle(.black)
                                    .lineLimit(1)
                            }
                            .frame(width: 70)
                        }
                    }
                }
                .padding(.horizontal)
            }

            // service list
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 14) {
                    // offer
                    Button {} label: {
                        HStack(spacing: 10) {
                            // icon
                            Image(systemName: "tag")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 16, height: 16)
                                .padding(.top, 2)

                            // text
                            Text("Offers")
                        }
                        .padding(.horizontal, 16)
                        .frame(height: 40)
                        .background(Color.uberCardColor)
                        .clipShape(Capsule())
                        .font(.subheadline)
                        .foregroundStyle(.black)
                        .fontWeight(.semibold)
                    }
                    // delivery fee
                    Button {} label: {
                        HStack(spacing: 10) {
                            // text
                            Text("Delivery fee")

                            Image(systemName: "chevron.down")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 7, height: 7)
                                .padding(.top, 2)
                        }
                        .padding(.horizontal, 16)
                        .frame(height: 40)
                        .background(Color.uberCardColor)
                        .clipShape(Capsule())
                        .font(.subheadline)
                        .foregroundStyle(.black)
                        .fontWeight(.semibold)
                    }

                    // under 30 min

                    Button {} label: {
                        // text
                        Text("Under 30 min")
                            .padding(.horizontal, 16)
                            .frame(height: 40)
                            .background(Color.uberCardColor)
                            .clipShape(Capsule())
                            .font(.subheadline)
                            .foregroundStyle(.black)
                            .fontWeight(.semibold)
                    }
                }
                .padding(.horizontal)
            }
        }
    }
}

struct FeaturedRestaurantView: View {
    var restaurantDatas: [EatsRestaurantResponse] = eatsRestaurantsData

    var body: some View {
        VStack(spacing: 12) {
            HStack {
                Text("Featured on UberEats")
                    .font(.title3)
                    .fontWeight(.semibold)

                Spacer()

                Button {} label: {
                    ZStack {
                        Circle()
                            .fill(Color.uberCardColor)
                            .frame(width: 38, height: 38)

                        Image(systemName: "arrow.right")
                            .foregroundStyle(.black)
                            .fontWeight(.semibold)
                    }
                }
            }
            .padding(.horizontal)

            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack(spacing: 12) {
                    ForEach(restaurantDatas) { restaurant in
                        RestaurantView(restaurant: restaurant)
                    }
                }
                .padding(.horizontal)
            }
        }
    }
}

struct RestaurantView: View {
    var restaurant: EatsRestaurantResponse
    var width = UIScreen.main.bounds.width

    var body: some View {
        VStack(spacing: 12) {
            ZStack(alignment: .top) {
                KFImage(URL(string: restaurant.imageUrl))
                    .resizable()
                    .scaledToFill()
                    .frame(width: width - 50, height: 150)
                    .clipShape(RoundedRectangle(cornerRadius: 12))

                HStack {
                    if restaurant.isOffer {
                        Text("Offers available")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .foregroundStyle(Color.uberWhiteColor)
                            .padding(.vertical, 4)
                            .padding(.horizontal, 12)
                            .background(Color.uberPrimaryColor)
                    }
                    Spacer()

                    Image(systemName: restaurant.isFavorite ? "heart.fill" : "heart")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 18, height: 18)
                        .foregroundStyle(restaurant.isFavorite ? Color.uberPrimaryColor : Color.uberWhiteColor)
                }
                .padding(.vertical)
                .padding(.trailing)
            }
            VStack(spacing: 0) {
                // name and rating
                HStack(alignment: .top) {
                    Text(restaurant.name)
                        .font(.headline)

                    Spacer()

                    ZStack {
                        Circle()
                            .fill(Color.uberCardColor)
                            .frame(width: 34, height: 34)

                        Text(restaurant.totalRate)
                            .font(.subheadline)
                            .fontWeight(.semibold)
                    }
                }
                // delivery fee and duration
                HStack {
                    Image(systemName: "info.circle")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 18, height: 18)

                    Text("\(restaurant.deliveryFee) Delivery Fee -")
                        .fontWeight(.semibold)

                    Text(restaurant.duration)
                        .fontWeight(.semibold)
                        .foregroundStyle(.black.opacity(0.6))
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .font(.subheadline)
            }
            .padding(.horizontal, 8)
        }
    }
}

struct PlaceYouMightLikeView: View {
    var restaurantDatas: [EatsRestaurantResponse] = eatsRestaurantsData

    var body: some View {
        VStack(spacing: 12) {
            HStack {
                Text("Places you might like")
                    .font(.title3)
                    .fontWeight(.semibold)

                Spacer()

                Button {} label: {
                    ZStack {
                        Circle()
                            .fill(Color.uberCardColor)
                            .frame(width: 38, height: 38)

                        Image(systemName: "arrow.right")
                            .foregroundStyle(.black)
                            .fontWeight(.semibold)
                    }
                }
            }
            .padding(.horizontal)

            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack(spacing: 12) {
                    ForEach(restaurantDatas) { restaurant in
                        RestaurantView(restaurant: restaurant)
                    }
                }
                .padding(.horizontal)
            }
        }
    }
}
