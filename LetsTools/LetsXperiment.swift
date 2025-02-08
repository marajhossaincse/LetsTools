//
//  LetsXperiment.swift
//  LetsTools
//
//  Created by Maraz Hossain on 1/21/25.
//

import Kingfisher
import SwiftUI

struct LetsXperiment: View {
    let imageUrls: [String] = [
        "https://picsum.photos/200?random==21",
        "https://picsum.photos/200?random==22",
        "https://picsum.photos/200?random==23",
        "https://picsum.photos/200?random==24"
    ]
        
    @State private var currentIndex = 0
    @State private var offset: CGFloat = 0
        
    var body: some View {
        VStack {
            ZStack {
                // Image Carousel
                GeometryReader { geometry in
                    HStack(spacing: 0) {
                        ForEach(0 ..< imageUrls.count, id: \.self) { index in
                            AsyncImage(url: URL(string: imageUrls[index])) { image in
                                image.resizable()
                                    .scaledToFill()
                                    .frame(width: geometry.size.width, height: 200)
                                    .cornerRadius(10)
                            } placeholder: {
                                Color.gray
                            }
                        }
                    }
                    .offset(x: self.offset)
                    .gesture(
                        DragGesture()
                            .onChanged { value in
                                self.offset = value.translation.width - CGFloat(self.currentIndex) * geometry.size.width
                            }
                            .onEnded { value in
                                if value.translation.width < -50 { // Swipe left
                                    self.moveToNextImage()
                                } else if value.translation.width > 50 { // Swipe right
                                    self.moveToPreviousImage()
                                } else {
                                    self.offset = -CGFloat(self.currentIndex) * geometry.size.width
                                }
                            }
                    )
                    .animation(.easeInOut(duration: 0.3), value: offset)
                }
                .frame(height: 200)
            }
                
            Spacer()
        }
    }
        
    /// Move to the next image
    func moveToNextImage() {
        if currentIndex < imageUrls.count - 1 {
            currentIndex += 1
        } else {
            currentIndex = 0 // Loop back to the first image
        }
        offset = -CGFloat(currentIndex) * 300 // Adjust the offset to the new image
    }
        
    /// Move to the previous image
    func moveToPreviousImage() {
        if currentIndex > 0 {
            currentIndex -= 1
        } else {
            currentIndex = imageUrls.count - 1 // Loop back to the last image
        }
        offset = -CGFloat(currentIndex) * 300 // Adjust the offset to the new image
    }
}


#Preview {
    LetsXperiment()
}
