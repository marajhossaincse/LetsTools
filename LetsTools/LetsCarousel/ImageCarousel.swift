//
//  ImageCarousel.swift
//  LetsTools
//
//  Created by Maraz Hossain on 2/13/25.
//

import Kingfisher
import SwiftUI

struct ImageCarousel: View {
    let items = ["Item 1", "Item 2", "Item 3", "Item 4", "Item 5"]
    
    var images = [
        "https://picsum.photos/200?random==1",
        "https://picsum.photos/200?random==2",
        "https://picsum.photos/200?random==3",
        "https://picsum.photos/200?random==4"
    ]
    
    var sites: [BnbSitesResponse] = [
        BnbSitesResponse(
            name: "Luxury Beachfront Villa.",
            images: [
                "https://picsum.photos/200?random==1",
                "https://picsum.photos/200?random==2",
                "https://picsum.photos/200?random==3",
                "https://picsum.photos/200?random==4"
            ],
            distance: "56 miles away",
            rating: "4.99",
            availabilityDate: "Feb 4-9",
            price: "290",
            isFavorite: true
        )
    ]
    
    var body: some View {
        VStack {
            TabView {
                ForEach(sites[0].images, id: \.self) { image in
                    VStack {
                        KFImage(URL(string: image))
                            .resizable()
                            .scaledToFill()
                            .frame(maxWidth: .infinity)
                            .frame(height: 200)
                    }
                    .frame(maxWidth: .infinity)
                    .frame(height: 200)
                    .background(Color.blue)
                    .cornerRadius(10)
                    .shadow(radius: 5)
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
            .frame(height: 200)
            .padding()
        }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    ImageCarousel()
}
