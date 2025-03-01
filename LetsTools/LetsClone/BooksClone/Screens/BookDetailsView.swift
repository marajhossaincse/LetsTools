//
//  BookDetailsView.swift
//  LetsTools
//
//  Created by Maraz Hossain on 2/28/25.
//

import Kingfisher
import SwiftUI

struct BookDetailsView: View {
    @Environment(\.dismiss) var dismiss
    
    var book: BookResponse
    
    var body: some View {
        VStack(spacing: 15) {
            KFImage(URL(string: book.thumbnail))
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 300, height: 480)
                .clipped()
                .shadow(radius: 8)
            
            Text(book.title)
            
            HStack {
                Text(book.author)
                Image(systemName: "chevron.right")
            }
            
            HStack(spacing: 5) {
                ForEach(0 ..< 5, id: \.self) { index in
                    Image(systemName: index < book.rating ? "star.fill" : "star")
                        .font(.system(size: 20))
                }
            }
            
            Text("\(book.totalRatings) ratings")
            
            Button {} label: {
                HStack {
                    Text("BUY")
                    
                    Rectangle()
                        .frame(width: 1, height: 15)
                    
                    Text("\(book.price)")
                }
                .frame(width: 320, height: 50)
                .foregroundStyle(Color.systemWhite)
                .background(Color.systemBlack)
                .clipShape(Capsule())
            }
            
            HStack {
                Button {} label: {
                    Image(systemName: "plus.circle.fill")
                    
                    Text("WANT TO READ")
                }
                .foregroundStyle(Color.label)
                .padding(10)
                .background(Color.clear)
                .overlay(Capsule().stroke(Color.systemBlack, lineWidth: 1.5))
                
                Button {} label: {
                    Image(systemName: "book.pages.fill")
                    
                    Text("SAMPLE")
                }
                .foregroundStyle(Color.label)
                .padding(10)
                .background(Color.clear)
                .overlay(Capsule().stroke(Color.systemBlack, lineWidth: 1.5))
            }
            .frame(width: 320)
            .clipShape(Capsule())
        }
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                Button {
                    dismiss()
                } label: {
                    Image(systemName: "xmark.circle.fill")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 20, height: 20)
                        .foregroundStyle(Color.systemGray)
                }
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    NavigationStack {
        BookDetailsView(book: booksData[0])
    }
}
