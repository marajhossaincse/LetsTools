//
//  BooksHomeView.swift
//  LetsTools
//
//  Created by Maraz Hossain on 2/26/25.
//

import Kingfisher
import SwiftUI

struct BooksHomeView: View {
    var books: [BookResponse] = booksData

    var body: some View {
        NavigationStack {
            ScrollView(showsIndicators: false) {
                VStack(spacing: 0) {
                    ThemeBasedBookBannerView()

                    NewAndTrendingBooksView()

                    TopChartsView()
                }
            }
            .navigationTitle("Book Store")
            .background(Color.secondarySystemBackground)
        }
    }
}

#Preview {
    BooksHomeView()
}

struct ThemeBasedBookBannerView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .top, spacing: 0) {
                BannerView(
                    title: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                    subTitle: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                    imageUrl: "https://picsum.photos/200?random=12"
                )

                BannerView(
                    title: "Lorem ipsum dolor sit amet.",
                    subTitle: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin accumsan dolor et sodales tempor.",
                    imageUrl: "https://picsum.photos/200?random=10"
                )
            }
        }
    }
}

struct BannerView: View {
    var title: String
    var subTitle: String
    var imageUrl: String

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(title.uppercased())
                .font(.headline)
                .lineLimit(1)

            Text(subTitle)
                .font(.subheadline)
                .fontWeight(.semibold)
                .lineLimit(2)

            KFImage(URL(string: imageUrl))
                .resizable()
                .scaledToFill()
                .frame(height: 180)
                .clipShape(RoundedRectangle(cornerRadius: 10))
        }
        .frame(width: 350)
        .padding(.leading)
    }
}

struct NewAndTrendingBooksView: View {
    var books: [BookResponse] = booksData

    let gridItems = [
        GridItem(.fixed(150), spacing: 10),
        GridItem(.fixed(150), spacing: 10)
    ]

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("New & Trending")
                .font(.title2)
                .fontWeight(.semibold)

            Text("Recently released and notable books.")
                .font(.subheadline)

            ScrollView(.horizontal, showsIndicators: false) {
                LazyHGrid(rows: gridItems, spacing: 10) {
                    ForEach(books) { book in
                        KFImage(URL(string: book.thumbnail))
                            .resizable()
                            .frame(width: 100, height: 150)
                    }
                }
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.leading)
        .padding(.vertical)
    }
}

struct TopChartsView: View {
    var books: [BookResponse] = booksData

    let gridItems = [
        GridItem(.fixed(150)),
        GridItem(.fixed(150)),
        GridItem(.fixed(150))
    ]

    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("Top Charts")
                .font(.title2)
                .fontWeight(.semibold)

            Divider()

            ScrollView(.horizontal, showsIndicators: false) {
                LazyHGrid(rows: gridItems, spacing: 32) {
                    ForEach(books) { book in
                        TopChartRowView(book: book)
                    }
                }
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.leading)
    }
}

struct TopChartRowView: View {
    var book: BookResponse

    var body: some View {
        VStack {
            HStack(spacing: 15) {
                KFImage(URL(string: book.thumbnail))
                    .resizable()
                    .scaledToFill()
                    .frame(width: 80, height: 110)

                Text("1")
                    .font(.subheadline)
                    .fontWeight(.semibold)

                VStack(alignment: .leading) {
                    Text(book.title)
                        .font(.headline)
                        .fontWeight(.semibold)

                    Text(book.author)
                        .font(.subheadline)
                        .fontWeight(.medium)
                        .foregroundStyle(Color.systemGray)
                }
                .padding(.trailing)
            }
            .frame(maxWidth: .infinity, alignment: .leading)

            Divider()
                .padding(.vertical)
        }
    }
}
