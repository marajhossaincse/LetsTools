//
//  BookingResponse.swift
//  LetsTools
//
//  Created by Maraz Hossain on 2/17/25.
//

import Foundation

struct BookingResponse: Identifiable {
    var id = UUID()
    var placeImages: [String] // 2 < images < 5
    var name: String
    var description: String
    var capacity: String
    var rating: String
    var totalRating: String
    var mileAway: String
    var date: String
    var price: String
    var isFavorite: Bool
}
