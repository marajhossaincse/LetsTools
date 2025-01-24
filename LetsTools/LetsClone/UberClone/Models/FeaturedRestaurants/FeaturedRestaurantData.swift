//
//  FeaturedRestaurantData.swift
//  LetsTools
//
//  Created by Maraz Hossain on 1/24/25.
//

import Foundation

let featuredRestaurants: [FeaturedRestaurantResponse] = [
    FeaturedRestaurantResponse(
        name: "Pasta Palace",
        deliveryFee: 3.99,
        deliveryTime: 20..<30,
        rating: 4.5,
        image: "https://picsum.photos/id/30/200/300",
        isOfferAvailable: true
    ),
    FeaturedRestaurantResponse(
        name: "Sushi World",
        deliveryFee: 5.99,
        deliveryTime: 15..<25,
        rating: 4.7,
        image: "https://picsum.photos/id/42/200/300",
        isOfferAvailable: false
    ),
    FeaturedRestaurantResponse(
        name: "Burger Kingdom",
        deliveryFee: 2.49,
        deliveryTime: 10..<20,
        rating: 4.0,
        image: "https://picsum.photos/id/55/200/300",
        isOfferAvailable: true
    ),
    FeaturedRestaurantResponse(
        name: "Vegan Delight",
        deliveryFee: 0.0,
        deliveryTime: 25..<35,
        rating: 4.8,
        image: "https://picsum.photos/id/63/200/300",
        isOfferAvailable: true
    ),
    FeaturedRestaurantResponse(
        name: "Pizza Express",
        deliveryFee: 4.49,
        deliveryTime: 30..<40,
        rating: 4.2,
        image: "https://picsum.photos/id/163/200/300",
        isOfferAvailable: false
    )
]
