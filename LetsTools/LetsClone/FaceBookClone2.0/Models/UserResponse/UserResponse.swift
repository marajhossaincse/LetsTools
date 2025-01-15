//
//  UserResponse.swift
//  LetsTools
//
//  Created by Maraz Hossain on 1/16/25.
//

import Foundation

struct UserResponse: Identifiable {
    var id = UUID()
    var name: String
    var imageUrl: String
    var isOnline: Bool
}
