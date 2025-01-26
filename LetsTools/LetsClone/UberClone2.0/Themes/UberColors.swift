//
//  UberColors.swift
//  LetsTools
//
//  Created by Maraz Hossain on 1/26/25.
//

import Foundation

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

    // color
    static let primaryColor = Color(hex: "#0B8344")
    static let cardColor = Color(hex: "#F3F3F3")

    static let blackColor = Color(hex: "#000000")
    static let whiteColor = Color(hex: "#FFFFFF")

    static let textFieldColor = Color(hex: "#E8E8E8")
}
