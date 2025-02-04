//
//  YTCloneHomeView.swift
//  LetsTools
//
//  Created by Maraz Hossain on 2/3/25.
//

import SwiftUI

struct YTCloneHomeView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 14) {
                    // category
                    CloneCategoryButtonView()
                        .padding()

                    // section 1
                    // section 2
                    // section 3
                    // section 4
                    // section 5
                }
            }
            // set logo and icons
            .toolbar {
                // logo
                ToolbarItem(placement: .topBarLeading) {
                    HStack(spacing: 5) {
                        ZStack {
                            Rectangle()
                                .fill(Color.white)
                                .frame(width: 20, height: 20)
                            Image(systemName: "play.rectangle.fill")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 30)
                                .foregroundStyle(Color.red)
                        }
                        // title
                        Text("Youtube")
                            .font(.title3)
                            .fontWeight(.semibold)
                    }
                }
                // icons
                ToolbarItem(placement: .topBarTrailing) {
                    HStack(spacing: 20) {
                        // tv
                        Button {} label: {
                            Image(systemName: "airplayvideo")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 20, height: 20)
                                .foregroundStyle(Color.white)
                        }

                        // notification
                        Button {} label: {
                            Image(systemName: "bell")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 20, height: 20)
                                .foregroundStyle(Color.white)
                        }

                        // search
                        Button {} label: {
                            Image(systemName: "magnifyingglass")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 20, height: 20)
                                .foregroundStyle(Color.white)
                        }
                    }
                }
            }
        }
        .preferredColorScheme(.dark)
    }
}

#Preview {
    YTCloneHomeView()
}

struct CloneCategoryButtonView: View {
    var categoryDatas: [CategoryResponse] = categoryData

    /// selected index
    @State private var selectedIndex: Int = 0

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 12) {
                ForEach(categoryDatas.indices, id: \.self) { index in
                    Button {
                        selectedIndex = index
                    } label: {
                        Text(categoryDatas[index].title)
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .foregroundStyle(selectedIndex == index ? .black : .white)
                            .padding(.horizontal, 16)
                            .padding(.vertical, 10)
                            .background(selectedIndex == index ? .white : Color.grayButtonColor)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                    }
                }
            }
        }
    }
}
