//
//  SleepListResponse.swift
//  LetsTools
//
//  Created by Maraz Hossain on 2/17/25.
//

import Foundation

struct SleepListResponse: Identifiable {
    var id = UUID()
    var imageUrl: String
    var name: String
    var description: String
}
