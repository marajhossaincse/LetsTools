//
//  UberCloneHomeView.swift
//  LetsTools
//
//  Created by Maraz Hossain on 1/26/25.
//

import SwiftUI

struct UberCloneHomeView: View {
    var tabs: [TabResponse] = tabsData
    @State private var selectedIndex = 0
    // for smooth animation
    @Namespace private var animation
    var width = UIScreen.main.bounds.width / 2

    var body: some View {
        NavigationStack {
            ScrollView {}
                // title and tabs
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .principal) {
                        HStack(spacing: 0) {
                            ForEach(tabs.indices, id: \.self) { index in
                                Button {
                                    withAnimation {
                                        selectedIndex = index
                                    }
                                } label: {
                                    VStack(spacing: 6) {
                                        // icon and text
                                        HStack(spacing: 12) {
                                            Image(tabs[index].imageUrl)
                                                .resizable()
                                                .scaledToFill()
                                                .frame(width: 38, height: 38)
                                                .background(.gray.opacity(0.5))

                                            Text(tabs[index].title)
                                                .font(.title3)
                                                .fontWeight(.semibold)
                                                .foregroundStyle(.black)
                                        }
                                        // border line full width and border underliner animation
                                        ZStack {
                                            Rectangle()
                                                .fill(.gray.opacity(0.4))
                                                .frame(width: width, height: 3)
                                            if selectedIndex == index {
                                                Rectangle()
                                                    .fill(.black)
                                                    .frame(width: width, height: 3)
                                                    .matchedGeometryEffect(id: "underline", in: animation)
                                            }
                                        }
                                    }
                                }
                                .frame(width: width)
                            }
                        }
                    }
                }
        }
    }
}

#Preview {
    UberCloneHomeView()
}
