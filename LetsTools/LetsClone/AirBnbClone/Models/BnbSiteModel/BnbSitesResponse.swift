//
//  BnbSiteResponse.swift
//  LetsTools
//
//  Created by Maraz Hossain on 2/8/25.
//

import Foundation

struct BnbSitesResponse: Identifiable {
    var id = UUID()
    var name: String
    var images: [String]
    var distance: String
    var rating: String
    var availabilityDate: String
    var price: String
    var isFavorite: Bool
}
