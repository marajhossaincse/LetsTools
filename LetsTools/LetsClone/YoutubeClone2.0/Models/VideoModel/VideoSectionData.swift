//
//  VideoData.swift
//  LetsTools
//
//  Created by Maraz Hossain on 2/3/25.
//

import Foundation

let videoSectionData: [VideoSectionResponse] = [
    VideoSectionResponse(
        id: UUID(),
        videoType: "Tutorial",
        title: "How to Build a Simple SwiftUI App",
        thumbnailUrl: "https://example.com/thumbnail1.jpg",
        duration: "10:30",
        videoUrl: "https://youtube.com/watch?v=abcdefgh",
        channelName: "SwiftUI Mastery",
        channelImgUrl: "https://example.com/channel1.jpg",
        channelSubscribers: "150K",
        totalViews: "1.2M",
        totalLikes: "120K",
        publishedAt: "3 days ago",
        totalComments: "500",
        lastCommentString: "Great tutorial! Learned a lot, thanks!",
        lastCommentImgUrl: "https://example.com/commenter1.jpg"
    ),
    VideoSectionResponse(
        id: UUID(),
        videoType: "Review",
        title: "iPhone 15 Review: The Best Yet?",
        thumbnailUrl: "https://example.com/thumbnail2.jpg",
        duration: "15:45",
        videoUrl: "https://youtube.com/watch?v=ijklmnop",
        channelName: "Tech Talks",
        channelImgUrl: "https://example.com/channel2.jpg",
        channelSubscribers: "500K",
        totalViews: "3.5M",
        totalLikes: "250K",
        publishedAt: "1 week ago",
        totalComments: "1.2K",
        lastCommentString: "I agree, the camera is amazing on this model!",
        lastCommentImgUrl: "https://example.com/commenter2.jpg"
    ),
    VideoSectionResponse(
        id: UUID(),
        videoType: "Vlog",
        title: "Exploring Tokyo: A 24-Hour Adventure",
        thumbnailUrl: "https://example.com/thumbnail3.jpg",
        duration: "24:00",
        videoUrl: "https://youtube.com/watch?v=qrstuvwx",
        channelName: "World Traveler",
        channelImgUrl: "https://example.com/channel3.jpg",
        channelSubscribers: "1.2M",
        totalViews: "2.8M",
        totalLikes: "200K",
        publishedAt: "2 months ago",
        totalComments: "900",
        lastCommentString: "This was so much fun to watch! Tokyo is on my bucket list!",
        lastCommentImgUrl: "https://example.com/commenter3.jpg"
    )
]
