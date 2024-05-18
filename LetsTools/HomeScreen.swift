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

            NavigationLink("Tool") {
                EmptyView()
            }

            NavigationLink("Tool") {
                EmptyView()
            }
            NavigationLink("Tool") {
                EmptyView()
            }
        }
        .navigationTitle("Lets Tools")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
