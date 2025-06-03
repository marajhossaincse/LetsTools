//
//  MapContainer.swift
//  LetsTools
//
//  Created by Maraz Hossain on 4/3/25.
//

// import Core
import MapKit
import SwiftUI

struct MapContainer: View {
    @State private var showingAlert = false

    private var location: MapMarkerPoint
    @Namespace var mapScope

    public init(
        location: MapMarkerPoint
    ) {
        self.location = location
    }

    func openMapsApp(name: String, lat: Double, long: Double) {
        let placeName = name
        let latitude = lat
        let longitude = long

        // Create a URL to open the Maps app
        if let url = URL(string: "maps://?ll=\(latitude),\(longitude)&q=\(placeName)") {
            if UIApplication.shared.canOpenURL(url) {
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            } else {
                print("Maps app is not available.")
            }
        }
    }

    var body: some View {
        Map(scope: mapScope) {
            Annotation(
                location.name,
                coordinate: location.coordinate,
                anchor: .bottom
            ) {
                Button {
//                    print("Button tapped")
//                    openMapsApp()
                    showingAlert = true

                } label: {
                    Image(systemName: "mappin")
                        .resizable()
                        .frame(width: 25, height: 30)
                }
                .alert(isPresented: $showingAlert) {
                    Alert(
                        title: Text("Open Maps"),
                        message: Text("Do you want to open the Maps app to see the location?"),
                        primaryButton: .default(Text("Yes")) {
                            openMapsApp(
                                name: location.name,
                                lat: location.coordinate.latitude,
                                long: location.coordinate.longitude
                            )
                        },
                        secondaryButton: .cancel()
                    )
                }
            }
            .annotationTitles(.hidden)
        }
        .overlay(alignment: .topTrailing) {
            MapCompass(scope: mapScope)
                .mapControlVisibility(.visible)
                .padding(.trailing, 10)
                .padding(.top, 10)
                .buttonBorderShape(.circle)
        }
        .mapScope(mapScope)
        .mapControlVisibility(.hidden)
        .accessibilityElement(children: .ignore)
    }
}

#Preview {
    MapContainer(
        location: MapMarkerPoint(
            coordinate: CLLocationCoordinate2D(
                latitude: 37.3347632279087,
                longitude: -122.00896127116438
            ),
            name: "Apple Headquarters",
            streetAddress: "Apple Street"
        )
    )
}
