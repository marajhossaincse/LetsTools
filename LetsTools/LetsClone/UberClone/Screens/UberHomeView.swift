//
//  HomeView.swift
//  LetsTools
//
//  Created by Maraz Hossain on 1/21/25.
//

import SwiftUI

struct UberHomeView: View {
    var tabs = ["Rides", "Eats"]
    @State private var selectedIndex = "Rides"
    var width = UIScreen.main.bounds.width
    @Namespace private var underlineAnimation

    var body: some View {
        NavigationStack {
            ScrollView {
                if selectedIndex == "Rides" {
                    UberRidesScreen()
                } else {
                    UberEatsScreen()
                }
            }
        }
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .principal) {
                HStack(spacing: 0) {
                    ForEach(tabs, id: \.self) { tab in
                        Button {
                            withAnimation {
                                selectedIndex = tab
                            }
                        } label: {
                            VStack(spacing: 8) {
                                Text(tab)
                                    .font(.headline)
                                    .fontWeight(.semibold)
                                    .foregroundStyle(selectedIndex == tab ? Color.black : .black.opacity(0.8))
                                if selectedIndex == tab {
                                    Rectangle()
                                        .frame(width: width / 2, height: 2)
                                        .foregroundStyle(Color.red)
                                        .matchedGeometryEffect(id: "underline", in: underlineAnimation)
                                } else {
                                    Rectangle()
                                        .frame(
                                            width: width / 2,
                                            height: 2
                                        )
                                        .foregroundStyle(Color.blue)
                                }
                            }
                        }
                        .frame(maxWidth: .infinity)
                        .padding()
                    }
                }
            }
        }
    }
}

#Preview {
    NavigationStack {
        UberHomeView()
    }
}
