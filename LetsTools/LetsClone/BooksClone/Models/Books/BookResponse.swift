//
//  Book.swift
//  LetsTools
//
//  Created by Maraz Hossain on 2/26/25.
//

import Foundation

struct BookResponse: Identifiable {
    var id = UUID()
    var title: String
    var author: String
    var rating: Int
    var totalRatings: String
    var price: String
    var thumbnail: String
}
