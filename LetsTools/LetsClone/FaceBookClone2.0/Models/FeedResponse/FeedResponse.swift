//
//  FeedResponse.swift
//  LetsTools
//
//  Created by Maraz Hossain on 1/15/25.
//

import Foundation

struct FeedResponse: Identifiable {
    var id = UUID()
    var user: UserResponse
    var type: Int
    var caption: String?
    var newsCompany: String?
    var newsTitle: String?
    var totalLikes: String
    var totalComments: String
    var totalShares: String
    var imageUrls: [String]
    var dateAgo: String
    var companyProfileUrl: String?
}
