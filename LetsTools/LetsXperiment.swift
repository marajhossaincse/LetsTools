//
//  LetsXperiment.swift
//  LetsTools
//
//  Created by Maraz Hossain on 1/21/25.
//

import SwiftUI

struct LetsXperiment: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
                   .fill(Color.red) // Background color of the entire rectangle
                   .shadow(radius: 10) // Optional shadow for depth
                   .overlay(
                       VStack(spacing: 0) {
                           // Image in the top half (takes up 50% of the space)
                           Image(systemName: "star.fill") // Replace with your image
                               .resizable()
                               .scaledToFit()
                               .frame(width: UIScreen.main.bounds.width, height: 200) // Fixed height for the image
                               .clipped()
                           
                           // Text in the bottom half (takes up remaining space)
                           VStack(alignment: .leading, spacing: 8) {
                               Text("Title")
                                   .font(.headline)
                                   .foregroundColor(.primary)
                               
                               Text("This is some additional information that explains the title.")
                                   .font(.body)
                                   .foregroundColor(.secondary)
                               
                               Text("More details here.")
                                   .font(.caption)
                                   .foregroundColor(.secondary)
                           }
                           .padding() // Padding for the text section
                       }
                   )
                   .frame(width: 300, height: 400) // Set width and height for the whole component
                   .padding() // Padding around the whole component
    }
}

#Preview {
    LetsXperiment()
}
