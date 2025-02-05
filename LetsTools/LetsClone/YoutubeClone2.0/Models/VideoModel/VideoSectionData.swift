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
        thumbnailUrl: "https://picsum.photos/200?random==1",
        duration: "10:30",
        videoUrl: "https://picsum.photos/200?random==2",
        channelName: "SwiftUI Mastery",
        channelImgUrl: "https://picsum.photos/200?random==3",
        channelSubscribers: "150K",
        totalViews: "1.2M",
        totalLikes: "120K",
        publishedAt: "3 days ago",
        totalComments: "500",
        lastCommentString: "Great tutorial! Learned a lot, thanks!",
        lastCommentImgUrl: "https://picsum.photos/200?random==4"
    ),
    VideoSectionResponse(
        id: UUID(),
        videoType: "Review",
        title: "iPhone 15 Review: The Best Yet?",
        thumbnailUrl: "https://picsum.photos/200?random==5",
        duration: "15:45",
        videoUrl: "https://picsum.photos/200?random==6",
        channelName: "Tech Talks",
        channelImgUrl: "https://picsum.photos/200?random==7",
        channelSubscribers: "500K",
        totalViews: "3.5M",
        totalLikes: "250K",
        publishedAt: "1 week ago",
        totalComments: "1.2K",
        lastCommentString: "I agree, the camera is amazing on this model!",
        lastCommentImgUrl: "https://picsum.photos/200?random==8"
    ),
    VideoSectionResponse(
        id: UUID(),
        videoType: "Vlog",
        title: "Exploring Tokyo: A 24-Hour Adventure",
        thumbnailUrl: "https://picsum.photos/200?random==9",
        duration: "24:00",
        videoUrl: "https://picsum.photos/200?random==10",
        channelName: "World Traveler",
        channelImgUrl: "https://picsum.photos/200?random==11",
        channelSubscribers: "1.2M",
        totalViews: "2.8M",
        totalLikes: "200K",
        publishedAt: "2 months ago",
        totalComments: "900",
        lastCommentString: "This was so much fun to watch! Tokyo is on my bucket list!",
        lastCommentImgUrl: "https://picsum.photos/200?random==12"
    )
]
