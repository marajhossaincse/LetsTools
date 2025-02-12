//
//  HomeScreen.swift
//  LetsTools
//
//  Created by Maraj Hossain on 7/4/24.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        List {
            NavigationLink("Ring Progress Bar") {
                RingProgressBarScreen()
            }

            NavigationLink("Mask") {
                MaskScreen()
            }

            NavigationLink("Loading Screen") {
                MainScreen()
            }

            NavigationLink("Cut card") {
                CutCardScreen()
            }
            NavigationLink("Container Menu") {
                ContainerMenuScreen()
            }
            NavigationLink("Facebook Clone") {
                FBHomeScreen()
            }
            NavigationLink("Facebook Clone 2") {
//                FBHomeView()
            }

            NavigationLink("Uber Clone") {
                UberHomeView()
            }

            NavigationLink("Uber Clone 2") {
                UberCloneHomeView()
            }

            NavigationLink("Youtube Clone") {
                YTHomeView()
            }

            NavigationLink("Youtube Clone 2") {
                YTCloneHomeView()
            }
        }
        .navigationTitle("Lets Tools")
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden(true)
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            HomeScreen()
        }
    }
}
