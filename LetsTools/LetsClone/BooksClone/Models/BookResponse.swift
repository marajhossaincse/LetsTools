//
//  Book.swift
//  LetsTools
//
//  Created by Maraz Hossain on 2/26/25.
//

struct BooksResponse: Identifiable {
    let id = UUID()
    let books: [BooksResponse]
}

struct BookResponse: Identifiable {
    let id = UUID()
    let title: String
    let author: String
    let rating: Int
    let totalRatings: String
    let price: String
    let thumbnail: String
}
