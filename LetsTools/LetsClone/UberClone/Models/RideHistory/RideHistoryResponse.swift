//
//  RideHistoryResponse.swift
//  LetsTools
//
//  Created by Maraz Hossain on 1/21/25.
//

import Foundation

struct RideHistoryResponse: Identifiable, Hashable {
    var id = UUID()
    var location: String
    var streetName: String
}
