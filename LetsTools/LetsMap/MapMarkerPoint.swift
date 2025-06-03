//
//  MapMarkerPoint.swift
//  LetsTools
//
//  Created by Maraz Hossain on 4/3/25.
//

import Foundation
import MapKit

public struct MapMarkerPoint: Identifiable, Equatable {
    public let id = UUID()
    public let coordinate: CLLocationCoordinate2D
    public let name: String
    public let streetAddress: String

    public init(
        coordinate: CLLocationCoordinate2D,
        name: String,
        streetAddress: String
    ) {
        self.coordinate = coordinate
        self.name = name
        self.streetAddress = streetAddress
    }

    public static func == (lhs: MapMarkerPoint, rhs: MapMarkerPoint) -> Bool {
        return lhs.id == rhs.id
        // add all others here
    }

    public static func getEmptyModel() -> MapMarkerPoint {
        return MapMarkerPoint(
            coordinate: CLLocationCoordinate2D(
                latitude: 0.0,
                longitude: 0.0
            ),
            name: "",
            streetAddress: ""
        )
    }
}

public extension MapMarkerPoint {
    static func mockItem() -> MapMarkerPoint {
        return MapMarkerPoint(
            coordinate: CLLocationCoordinate2D(
                latitude: CLLocationDegrees.random(in: 23...24),
                longitude: CLLocationDegrees.random(in: 90...91)
            ),
            name: "Lorem Ipsum",
            streetAddress: "Lorem Ipsum, Uttara, Dhaka-1230"
        )
    }
}
