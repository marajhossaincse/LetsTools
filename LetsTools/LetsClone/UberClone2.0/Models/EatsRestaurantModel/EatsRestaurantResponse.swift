//
//  EatsRestaurantResponse.swift
//  LetsTools
//
//  Created by Maraz Hossain on 1/26/25.
//

import Foundation

struct EatsRestaurantResponse: Identifiable {
    var id = UUID()
    var name: String
    var imageUrl: String
    var deliveryFee: String
    var duration: String
    var totalRate: String
    var isOffer: Bool
    var isFavorite: Bool
}
