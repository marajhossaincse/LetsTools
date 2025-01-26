//
//  RidesSuggestionResponse.swift
//  LetsTools
//
//  Created by Maraz Hossain on 1/26/25.
//

import Foundation

struct RidesSuggestionResponse: Identifiable {
    var id = UUID()
    var name: String
    var imageUrl: String
    var isPromoted: Bool
}
