//
//  StoryResponse.swift
//  LetsTools
//
//  Created by Maraz Hossain on 1/16/25.
//

import Foundation

struct StoryResponse: Identifiable {
    var id = UUID()
    var user: UserResponse
    var imageUrl: String
}
