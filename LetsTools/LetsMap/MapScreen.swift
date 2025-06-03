////
////  MapScreen.swift
////  LetsTools
////
////  Created by Maraz Hossain on 4/3/25.
////
//
///*
//    **Implementing MapKit **
//
// #H3 1. Import MapKit and SwiftUI
// #H3 2. Add the MapView to Your SwiftUI View
// #H3 3. Add Permissions to the Info.plist
// #H3 4. Handling Location Updates *(Optional)*
//
// */
//
//import MapKit
//import SwiftUI
//
//struct MapScreen: View {
//    @StateObject private var locationManager = LocationManager()
//    @State private var region = MKCoordinateRegion(
//        center: CLLocationCoordinate2D(latitude: 37.7749, longitude: -122.4194),
//        span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
//    )
//
//    let places = [
//        IdentifiablePlace(
//            title: "Golden Gate Bridge",
//            coordinate: CLLocationCoordinate2D(latitude: 37.7749, longitude: -122.4194)
//        )
//    ]
//
////    @State private var region = MKCoordinateRegion(
////        center: CLLocationCoordinate2D(latitude: 37.7749, longitude: -122.4194), // Set coordinates for San Francisco
////        span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
////    )
//
//    var body: some View {
//        Map(coordinateRegion: $region, showsUserLocation: true, annotationItems: places) { place in
//            MapPin(coordinate: place.coordinate, tint: .red)
//        }
//        .frame(height: 300)
//        .onAppear {
//            if let userCoordinate = locationManager.userLocation {
//                region.center = userCoordinate
//            }
//        }
////            .onChange(of: locationManager.userLocation) { newLocation in
////                if let userCoordinate = newLocation {
////                    region.center = userCoordinate
////                }
////            }
//    }
//}
//
//struct IdentifiablePlace: Identifiable {
//    var id = UUID()
//    var title: String
//    var coordinate: CLLocationCoordinate2D
//}
//
///// Location manager for handling user location updates. Step 4.
//class LocationManager: NSObject, ObservableObject, CLLocationManagerDelegate {
//    private var locationManager = CLLocationManager()
//    @Published var userLocation: CLLocationCoordinate2D?
//
//    override init() {
//        super.init()
//        locationManager.delegate = self
//        locationManager.requestWhenInUseAuthorization()
//        locationManager.startUpdatingLocation()
//    }
//
//    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
//        if let location = locations.first {
//            userLocation = location.coordinate
//        }
//    }
//
//    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
//        print("Error: \(error.localizedDescription)")
//    }
//}
//
//#Preview {
//    MapScreen()
//}
