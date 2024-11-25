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
        }
        .navigationTitle("Lets Tools")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            HomeScreen()
        }
    }
}
