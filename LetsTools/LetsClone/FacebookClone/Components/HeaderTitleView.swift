//
//  HeaderTitleView.swift
//  LetsTools
//
//  Created by Maraz Hossain on 12/24/24.
//

import SwiftUI

struct HeaderTitleView: View {
    var body: some View {
        HStack {
            Text("Facebook")
                .font(.custom("Helvetica Neue Bold", size: 25))
                .foregroundColor(.blue)
                .fontWeight(.bold)

            Spacer()

            createIcon(withIcon: "plus")
            createIcon(withIcon: "magnifyingglass")
            createIcon(withIcon: "message.fill")
        }
        .background(Color.white)
    }
}

func createIcon(withIcon icon: String) -> some View {
    Image(systemName: icon)
        .resizable()
        .scaledToFit()
        .frame(width: 20, height: 20)
        .foregroundColor(.black)
        .background(
            Circle()
                .fill(Color.gray.opacity(0.25))
                .frame(width: 30, height: 30)
        )
        .padding(4)
}

#Preview {
    HeaderTitleView()
}
