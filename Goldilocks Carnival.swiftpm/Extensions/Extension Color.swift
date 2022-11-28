//
//  Extension Color.swift
//
//  Created by Ji hyuk Song on 22/11/20.
//

import SwiftUI

extension Color {
    static let burgendy = Color(hex: "#760c0c")
    static let darkGray = Color(hex: "#444444")
    static let darkBrown = Color(hex: "#873c00")
    static let toffeeBrown = Color(hex: "#a58362")
    static let mossGreen = Color(hex: "#314821")
    static let ivory = Color(hex: "#ece6cc")
    static let beige = Color(hex: "#decaad")
    static let lightBrown = Color(hex: "#ac8e68")
    static let deepDarkBrown = Color(hex: "#9c7d58")
    static let deepGreen = Color(hex: "#123427")
    static let midnightBlue = Color(hex: "#14145a")
}

extension Color {
    init(hex: String) {
        let scanner = Scanner(string: hex)
        _ = scanner.scanString("#")
        
        var rgb: UInt64 = 0
        scanner.scanHexInt64(&rgb)
        
        let r = Double((rgb >> 16) & 0xFF) / 255.0
        let g = Double((rgb >>  8) & 0xFF) / 255.0
        let b = Double((rgb >>  0) & 0xFF) / 255.0
        self.init(red: r, green: g, blue: b)
    }
}
