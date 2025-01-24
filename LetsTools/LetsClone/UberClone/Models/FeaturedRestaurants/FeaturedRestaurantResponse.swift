//
//  FeaturedRestaurantModel.swift
//  LetsTools
//
//  Created by Maraz Hossain on 1/24/25.
//

import Foundation
struct FeaturedRestaurantResponse: Identifiable, Hashable {
    var id = UUID()
    var name: String
    var deliveryFee: Float
    var deliveryTime: Range<Int>
    var rating: Float
    var image: String
    var isOfferAvailable: Bool
}
