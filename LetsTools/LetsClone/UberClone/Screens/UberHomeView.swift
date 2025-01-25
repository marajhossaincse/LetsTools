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
                VStack(spacing: 0) {
                    HStack {
                        ForEach(tabs, id: \.self) { tab in
                            Spacer()

                            HStack {
                                Image(systemName: tab == "Rides" ? "car.circle" : "fork.knife.circle")
                                    .resizable()
                                    .scaledToFill()
                                    .fontWeight(.semibold)
                                    .frame(width: 24, height: 24)

                                Text(tab)
                                    .font(.headline)
                                    .fontWeight(.semibold)
                            }
                            .padding(.horizontal)
                            .font(.headline)
                            .fontWeight(.semibold)
                            .onTapGesture {
                                withAnimation {
                                    selectedIndex = tab
                                }
                            }
                            Spacer()
                        }
                    }
                    .frame(maxWidth: .infinity)

                    ZStack(alignment: .topLeading) {
                        Rectangle()
                            .foregroundColor(Color.gray.opacity(0.5))
                            .frame(width: UIScreen.main.bounds.width, height: 2)

                        ForEach(tabs, id: \.self) { tab in
                            if selectedIndex == tab { // Compare with the string value
                                Rectangle()
                                    .frame(width: UIScreen.main.bounds.width / CGFloat(tabs.count), height: 2)
                                    .foregroundStyle(Color.black)
                                    .matchedGeometryEffect(id: "underline", in: underlineAnimation)
                                    .offset(x: CGFloat(tabs.firstIndex(of: tab) ?? 0) * (UIScreen.main.bounds.width / CGFloat(tabs.count))) // Calculate offset based on string index
                            }
                        }
                    }
                    .frame(height: 2)
                    .padding(.top, 8)
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
