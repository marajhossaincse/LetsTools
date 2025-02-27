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
            ScrollView {
                VStack(spacing: 0) {
                    ThemeBasedBookBannerView()
                }
            }
            .navigationTitle("Book Store")
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
