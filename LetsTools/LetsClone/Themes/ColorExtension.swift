//
//  UberColors.swift
//  LetsTools
//
//  Created by Maraz Hossain on 1/26/25.
//

import SwiftUI

extension Color {
    /// Hex color initial
    init(hex: String, opacity: Double = 1.0) {
        let hexSanitized = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var rgb: UInt64 = 0
        Scanner(string: hexSanitized).scanHexInt64(&rgb)

        let red = Double((rgb & 0xFF0000) >> 16) / 255.0
        let green = Double((rgb & 0x00FF00) >> 8) / 255.0
        let blue = Double(rgb & 0x0000FF) / 255.0

        self.init(.sRGB, red: red, green: green, blue: blue, opacity: opacity)
    }

    // facebook colors
    static let primaryColor = Color(hex: "#3875E9")

    static let successColor = Color(hex: "#69BA6A")
    static let dangerColor = Color(hex: "#DA3948")

    static let onlineColor = Color(hex: "45D31C")

    static let backgroundColor = Color(hex: "C5C9CC")
    static let grayBackgroundColor = Color(hex: "E9EAEF")
    static let newsBackgroundColor = Color(hex: "F6F8FA")

    // Uber colors
    static let uberPrimaryColor = Color(hex: "#0B8344")
    static let uberCardColor = Color(hex: "#F3F3F3")

    static let uberBlackColor = Color(hex: "#000000")
    static let uberWhiteColor = Color(hex: "#FFFFFF")

    static let uberTextFieldColor = Color(hex: "#E8E8E8")

    /// Youtube colors
    static let grayButtonColor = Color(hex: "#272727")
}
