//
//  HomeView.swift
//  LetsTools
//
//  Created by Maraz Hossain on 1/16/25.
//

import SwiftUI

struct HomeView: View {
    /// set header to background white
    init() {
        // set the background color of the navigation bar
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = .white

        UINavigationBar.appearance().standardAppearance = appearance
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
    }

    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 8) {
                    // profile what is on your mind
                    ProfileWhatIsOnYourMindView()
                    // story view
                    
                    // feed view
                    
                }
            }
            .background(Color.backgroundColor)
            // logo and icon
            .toolbar {
                // logo
                ToolbarItem(placement: .topBarLeading) {
                    Text("Facebook")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundStyle(Color.primaryColor)
                }
                // icon
                ToolbarItem(placement: .topBarTrailing) {
                    HStack(spacing: 0) {
                        // plus
                        Button {} label: {
                            ZStack {
                                Circle()
                                    .fill(Color.grayBackgroundColor)
                                    .frame(width: 35, height: 35)
                                Image(systemName: "plus")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 17, height: 17)
                                    .fontWeight(.semibold)
                                    .foregroundStyle(.black)
                            }
                        }

                        // search
                        Button {} label: {
                            ZStack {
                                Circle()
                                    .fill(Color.grayBackgroundColor)
                                    .frame(width: 35, height: 35)
                                Image(systemName: "magnifyingglass")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 19, height: 19)
                                    .fontWeight(.semibold)
                                    .foregroundStyle(.black)
                            }
                        }

                        // messenger
                        Button {} label: {
                            ZStack {
                                Circle()
                                    .fill(Color.grayBackgroundColor)
                                    .frame(width: 35, height: 35)
                                Image(systemName: "message.fill")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 19, height: 19)
                                    .fontWeight(.semibold)
                                    .foregroundStyle(.black)
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    HomeView()
}


struct ProfileWhatIsOnYourMindView: View{
    var body: some View{
        HStack{
            
        }
    }
}
