//
//  HostListResponse.swift
//  LetsTools
//
//  Created by Maraz Hossain on 2/17/25.
//

import Foundation

struct HostListResponse: Identifiable{
    var id = UUID()
    var name: String
    var description: String
    var icon: String
}
