//
//  DetailData.swift
//  LetsTools
//
//  Created by Maraz Hossain on 2/17/25.
//

import Foundation

let detailRecord = DetailResponse(
    hostBy: "John Doe",
    hostImgUrl: "https://picsum.photos/200/200?random=1",
    hostAgo: "3 hours ago",
    hostList: [
        HostListResponse(
            name: "Superhost",
            description: "John has been a Superhost for over 3 years, providing exceptional stays.",
            icon: "medal.fill"
        ),
        HostListResponse(
            name: "Verified Host",
            description: "All your bookings are confirmed and secure with a verified host.",
            icon: "checkmark"
        )
    ],
    bedRoomDetail: [
        SleepListResponse(
            imageUrl: "https://picsum.photos/500/300?random=2",
            name: "Master Bedroom",
            description: "A spacious master bedroom with a king-size bed and an en-suite bathroom."
        ),
        SleepListResponse(
            imageUrl: "https://picsum.photos/500/300?random=3",
            name: "Guest Bedroom",
            description: "A cozy guest bedroom with a queen-size bed and ample storage space."
        )
    ],
    placeOfferList: [
        PlaceOfferResponse(
            name: "Free WiFi",
            icon: "wifi"
        ),
        PlaceOfferResponse(
            name: "Swimming Pool",
            icon: "drop.fill"
        ),
        PlaceOfferResponse(
            name: "Gym Access",
            icon: "dumbbell.fill"
        )
    ],
    reviewList: [
        ReviewListResponse(
            name: "Jane Smith",
            profileUrl: "https://picsum.photos/200/200?random=4",
            description: "Had a fantastic time! The host was very welcoming, and the place was clean and cozy.",
            dateAgo: "1 day ago"
        ),
        ReviewListResponse(
            name: "Michael Johnson",
            profileUrl: "https://picsum.photos/200/200?random=5",
            description: "Great location and amenities! Perfect for a short getaway with friends.",
            dateAgo: "3 days ago"
        ),
        ReviewListResponse(
            name: "Emily Davis",
            profileUrl: "https://picsum.photos/200/200?random=6",
            description: "Would love to stay here again. The house was beautiful and well maintained.",
            dateAgo: "1 week ago"
        )
    ]
)
