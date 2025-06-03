//
//  HomeScreen.swift
//  LetsTools
//
//  Created by Maraj Hossain on 7/4/24.
//

import SwiftUI
import MapKit

struct HomeScreen: View {
    var body: some View {
        List {
            NavigationLink {
                ToolsScreen()
            } label: {
                HStack(spacing: 10) {
                    Image(systemName: "gearshape.2.fill")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 15, height: 15)
                        .foregroundStyle(Color.systemGray)

                    Text("Tools")
                }
            }

            NavigationLink {
                ClonesScreen()
            } label: {
                HStack(spacing: 10) {
                    Image(systemName: "person.2.fill")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 15, height: 15)
                        .foregroundStyle(Color.systemGray)

                    Text("Clones")
                }
            }
        }
        .navigationTitle("Lets Tools")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            HomeScreen()
        }
    }
}

struct ToolsScreen: View {
    @Environment(\.dismiss) var dismiss

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

            NavigationLink("Image Carousel") {
                ImageCarousel()
            }
            
            NavigationLink("Map") {
                MapContainer(location: MapMarkerPoint(
                    coordinate: CLLocationCoordinate2D(
                        latitude: 37.3347632279087,
                        longitude: -122.00896127116438
                    ),
                    name: "lorem ipsum name",
                    streetAddress: ""
                )
                )
            }
        }
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                Button {
                    dismiss()
                } label: {
                    Image(systemName: "chevron.left")
                        .foregroundStyle(Color.systemBlack)
                        .font(.headline)
                }
            }
        }
    }
}

struct ClonesScreen: View {
    @Environment(\.dismiss) var dismiss

    var body: some View {
        List {
            NavigationLink("Facebook Clone") {
                FBHomeScreen()
            }

            NavigationLink("Facebook Clone 2") {
                FBCloneHomeView()
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

            NavigationLink("AirBnb Clone") {
                AirbnbHomeScreen()
            }

            NavigationLink("Books Clone") {
                BooksHomeView()
            }
        }
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                Button {
                    dismiss()
                } label: {
                    Image(systemName: "chevron.left")
                        .foregroundStyle(Color.systemBlack)
                        .font(.headline)
                }
            }
        }
    }
}
