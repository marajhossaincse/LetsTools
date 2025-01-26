//
//  RidesHistoryResponse.swift
//  LetsTools
//
//  Created by Maraz Hossain on 1/26/25.
//

import Foundation

struct RidesHistoryResponse: Identifiable {
    var id = UUID()
    var location: String
    var streetName: String
}
