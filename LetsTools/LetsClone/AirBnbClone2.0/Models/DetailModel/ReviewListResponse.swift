//
//  ReviewListResponse.swift
//  LetsTools
//
//  Created by Maraz Hossain on 2/17/25.
//

import Foundation

struct ReviewListResponse: Identifiable {
    var id = UUID()
    var name: String
    var profileUrl: String
    var description: String
    var dateAgo: String
}
