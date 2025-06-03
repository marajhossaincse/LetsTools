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

    // Facebook colors
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

    // Youtube colors
    static let grayButtonColor = Color(hex: "#272727")

    // MARK: - Text Colors

    static let lightText = Color(UIColor.lightText)
    static let darkText = Color(UIColor.darkText)
    static let placeholderText = Color(UIColor.placeholderText)

    // MARK: - Label Colors

    static let label = Color(UIColor.label)
    static let labelLightVariant = Color(UIColor.label).opacity(0.7)
    static let secondaryLabel = Color(UIColor.secondaryLabel)
    static let tertiaryLabel = Color(UIColor.tertiaryLabel)
    static let quaternaryLabel = Color(UIColor.quaternaryLabel)

    // MARK: - Background Colors

    static let systemBackground = Color(UIColor.systemBackground)
    static let secondarySystemBackground = Color(UIColor.secondarySystemBackground)
    static let tertiarySystemBackground = Color(UIColor.tertiarySystemBackground)

    // MARK: - Fill Colors

    static let systemFill = Color(UIColor.systemFill)
    static let secondarySystemFill = Color(UIColor.secondarySystemFill)
    static let tertiarySystemFill = Color(UIColor.tertiarySystemFill)
    static let quaternarySystemFill = Color(UIColor.quaternarySystemFill)

    // MARK: - Grouped Background Colors

    static let systemGroupedBackground = Color(UIColor.systemGroupedBackground)
    static let secondarySystemGroupedBackground = Color(UIColor.secondarySystemGroupedBackground)
    static let tertiarySystemGroupedBackground = Color(UIColor.tertiarySystemGroupedBackground)

    // MARK: - Gray Colors

    static let systemGray = Color.gray
    static let systemGrayAccessible = Color("systemGrayAccessible")
    static let systemGray2 = Color(UIColor.systemGray2)
    static let systemGray2Accessible = Color("systemGray2Accessible")
    static let systemGray3 = Color(UIColor.systemGray3)
    static let systemGray3Accessible = Color("systemGray3Accessible" )
    static let systemGray4 = Color(UIColor.systemGray4)
    static let systemGray4Accessible = Color("systemGray4Accessible")
    static let systemGray5 = Color(UIColor.systemGray5)
    static let systemGray5Accessible = Color("systemGray5Accessible")
    static let systemGray6 = Color(UIColor.systemGray6)
    static let systemGray6Accessible = Color("systemGray6Accessible")

    // MARK: - Other Colors

    static let separator = Color(UIColor.separator)
    static let opaqueSeparator = Color(UIColor.opaqueSeparator)
    static let link = Color(UIColor.link)

    // MARK: System Colors

    static let systemRed = Color.red
    static let systemRedAccessible = Color("systemRedAccessible")
    static let systemOrange = Color.orange
    static let systemOrangeAccessible = Color("systemOrangeAccessible")
    static let systemYellow = Color.yellow
    static let systemYellowAccessible = Color("systemYellowAccessible")
    static let systemGreen = Color.green
    static let systemGreenAccessible = Color("systemGreenAccessible")
    static let systemMint = Color.mint
    static let systemMintAccessible = Color("systemMintAccessible")
    static let systemTeal = Color.teal
    static let systemTealAccessible = Color("systemTealAccessible")
    static let systemCyan = Color.cyan
    static let systemCyanAccessible = Color("systemCyanAccessible")
    static let systemBlue = Color.blue
    static let systemBlueAccessible = Color("systemBlueAccessible")
    static let systemIndigo = Color.indigo
    static let systemIndigoAccessible = Color("systemIndigoAccessible")
    static let systemPurple = Color.purple
    static let systemPurpleAccessible = Color("systemPurpleAccessible")
    static let systemPink = Color.pink
    static let systemPinkAccessible = Color("systemPinkAccessible")
    static let systemBrown = Color.brown
    static let systemBrownAccessible = Color("systemBrownAccessible")

    static let systemWhite = Color("systemWhite")
    static let systemBlack = Color("systemBlack")
}
