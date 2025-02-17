//
//  DetailResponse.swift
//  LetsTools
//
//  Created by Maraz Hossain on 2/17/25.
//

import Foundation

struct DetailResponse: Identifiable {
    var id = UUID()
    var hostBy: String
    var hostImgUrl: String
    var hostAgo: String
    var hostList: [HostListResponse]
    var bedRoomDetail: [SleepListResponse]
    var placeOfferList: [PlaceOfferResponse]
    var reviewList: [ReviewListResponse]
}
