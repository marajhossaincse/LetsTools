//
//  User.swift
//  LetsTools
//
//  Created by Maraz Hossain on 1/14/25.
//

import Foundation

class User: Identifiable {
    var id: UUID
    let name: String
    let profileImage: String
    let storyImage: String
    let isOnline: Bool

    init(
        id: UUID = UUID(),
        name: String,
        profileImage: String,
        storyImage: String,
        isOnline: Bool
    ) {
        self.id = id
        self.name = name
        self.profileImage = profileImage
        self.storyImage = storyImage
        self.isOnline = isOnline
    }
}
