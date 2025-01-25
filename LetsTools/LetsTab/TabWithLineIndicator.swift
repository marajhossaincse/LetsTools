//
//  TabWithLineIndicator.swift
//  LetsTools
//
//  Created by Maraz Hossain on 1/25/25.
//

import SwiftUI

struct TabWithLineIndicator: View {
    @State private var selectedIndex: Int = 0
    let tabs = ["Tab 1", "Tab 2", "Tab 3"]
    @Namespace private var underlineAnimation

    var body: some View {
        VStack {
            // Tab Bar
            HStack {
                ForEach(0..<tabs.count, id: \.self) { index in
                    Text(tabs[index])
                        .padding()
                        .background(
                            Color.gray.opacity(0.2),
                            in: RoundedRectangle(cornerRadius: 10)
                        )
                        .onTapGesture {
                            withAnimation {
                                selectedIndex = index
                            }
                        }
                }
            }
            .padding()

            // Underline Rectangle
            ZStack(alignment: .bottomLeading) {
                Rectangle()
                    .foregroundColor(Color.gray)
                    .frame(width: UIScreen.main.bounds.width, height: 2)

                ForEach(0..<tabs.count, id: \.self) { index in
                    if selectedIndex == index {
                        Rectangle()
                            .frame(width: UIScreen.main.bounds.width / CGFloat(tabs.count), height: 2)
                            .foregroundStyle(Color.red)
                            .matchedGeometryEffect(id: "underline", in: underlineAnimation)
                            .offset(x: CGFloat(index) * (UIScreen.main.bounds.width / CGFloat(tabs.count)))
                    }
                }
            }
            .frame(height: 2)
            .padding(.top, 8)
        }
    }
}

#Preview {
    TabWithLineIndicator()
}
