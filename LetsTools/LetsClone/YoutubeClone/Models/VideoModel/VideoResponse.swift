//
//  VideoResponse.swift
//  LetsTools
//
//  Created by Maraz Hossain on 1/31/25.
//

import Foundation

struct VideoResponse: Identifiable {
    var id = UUID()
    var profileImageUrl: String
    var name: String
    var thumbnailUrl: String
    var title: String
    var views: String
    var uploadDuration: String
}
