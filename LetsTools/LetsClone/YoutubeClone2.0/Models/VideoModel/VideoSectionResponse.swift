//
//  File.swift
//  LetsTools
//
//  Created by Maraz Hossain on 2/3/25.
//

import Foundation

struct VideoSectionResponse: Identifiable {
    var id = UUID()
    var videoType: String
    var title: String
    var thumbnailUrl: String
    var duration: String
    var videoUrl: String
    var channelName: String
    var channelImgUrl: String
    var channelSubscribers: String
    var totalViews: String
    var totalLikes: String
    var publishedAt: String
    var totalComments: String
    var lastCommentString: String
    var lastCommentImgUrl: String
}
