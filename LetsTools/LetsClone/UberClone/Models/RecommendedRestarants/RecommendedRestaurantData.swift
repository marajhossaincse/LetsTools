//
//  RecommendedRestaurantData.swift
//  LetsTools
//
//  Created by Maraz Hossain on 1/24/25.
//

import Foundation

let recommendedRestaurants: [RecommendedRestaurantResponse] = [
    RecommendedRestaurantResponse(
        name: "Grill Masters",
        deliveryFee: 4.99,
        deliveryTime: 20..<30,
        rating: 4.6,
        image: "https://picsum.photos/id/225/200/300",
        isOfferAvailable: true
    ),
    RecommendedRestaurantResponse(
        name: "Taco Haven",
        deliveryFee: 3.49,
        deliveryTime: 15..<25,
        rating: 4.4,
        image: "https://picsum.photos/id/180/200/300",
        isOfferAvailable: false
    ),
    RecommendedRestaurantResponse(
        name: "Steakhouse 101",
        deliveryFee: 6.99,
        deliveryTime: 25..<35,
        rating: 4.8,
        image: "https://picsum.photos/id/175/200/300",
        isOfferAvailable: true
    ),
    RecommendedRestaurantResponse(
        name: "Smoothie Express",
        deliveryFee: 2.99,
        deliveryTime: 10..<20,
        rating: 4.3,
        image: "https://picsum.photos/id/29/200/300",
        isOfferAvailable: true
    ),
    RecommendedRestaurantResponse(
        name: "Burrito Factory",
        deliveryFee: 1.99,
        deliveryTime: 18..<28,
        rating: 4.2,
        image: "https://picsum.photos/id/5/200/300",
        isOfferAvailable: false
    )
]
