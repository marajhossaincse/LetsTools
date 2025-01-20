//
//  FeedData.swift
//  LetsTools
//
//  Created by Maraz Hossain on 1/15/25.
//

import Foundation

let feedData: [FeedResponse] = [
    FeedResponse(
        user: userData[0],
        type: 1,
        caption: "A beautiful sunset in the mountains.",
        newsCompany: "Nature Daily",
        newsTitle: "Top 10 Beautiful Sunsets in the World",
        totalLikes: "1200",
        totalComments: "345",
        totalShares: "89",
        imageUrls: [
            "https://picsum.photos/600/400?random=1",
            "https://picsum.photos/600/400?random=2"
        ],
        dateAgo: "2 hours ago",
        companyProfileUrl: "https://picsum.photos/200/300"
    ),
    FeedResponse(
        user: userData[1],
        type: 2,
        caption: "Breaking News: Earthquake in Japan.",
        newsCompany: "Global News Network",
        newsTitle: "Magnitude 7.5 Earthquake Hits Japan",
        totalLikes: "3000",
        totalComments: "980",
        totalShares: "450",
        imageUrls: [
            "https://picsum.photos/600/400?random=3",
            "https://picsum.photos/600/400?random=2",
            "https://picsum.photos/600/400?random=2"
        ],
        dateAgo: "1 day ago",
        companyProfileUrl: "https://picsum.photos/200/300"
    ),
    FeedResponse(
        user: userData[2],
        type: 1, // Image post
        caption: nil, // No caption for this post
        newsCompany: nil,
        newsTitle: nil,
        totalLikes: "560",
        totalComments: "112",
        totalShares: "23",
        imageUrls: [
            "https://picsum.photos/600/400?random=4"
        ],
        dateAgo: "3 hours ago",
        companyProfileUrl: nil
    ),
    FeedResponse(
        user: userData[3],
        type: 2, // Video post
        caption: "An exciting football match yesterday!",
        newsCompany: "Sports Today",
        newsTitle: "Epic Football Moments",
        totalLikes: "2200",
        totalComments: "670",
        totalShares: "330",
        imageUrls: [
            "https://picsum.photos/600/400?random=5"
        ],
        dateAgo: "10 minutes ago",
        companyProfileUrl: "https://picsum.photos/200/300"
    )
]
