//
//  UIColor+Hex.swift
//  navigator
//
//  Created by Юля Шубина on 31.08.2026.
//

import UIKit

extension UIColor {
    static func hexColor(_ hex: String) -> UIColor {
        var cString = hex.trimmingCharacters(in: .whitespacesAndNewlines)
        if cString.hasPrefix("#") { cString.removeFirst() }
        guard cString.count == 6 else { return .gray }

        let rgb = UInt32(cString, radix: 16)!
        return UIColor(
            red: CGFloat((rgb & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgb & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgb & 0x0000FF) / 255.0,
            alpha: 1.0
        )
    }
}
