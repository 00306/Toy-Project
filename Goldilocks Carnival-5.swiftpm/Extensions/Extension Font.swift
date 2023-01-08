//
//  Extension Font.swift
//
//  Created by Ji hyuk Song on 22/11/20.
//

import SwiftUI
import UIKit

extension Font {
    static func registerFonts() {
        self.register(name: "BlackCastleMF", withExtension: "ttf")
        self.register(name: "HEADOH", withExtension: "TTF")
        self.register(name: "Oklahoma", withExtension: "ttf")
        self.register(name: "Plain Black", withExtension: "ttf")
    }
    
    static func register(name: String, withExtension: String) {
        guard let url = Bundle.main.url(forResource: name, withExtension: withExtension),CTFontManagerRegisterFontsForURL(url as CFURL, .process, nil) 
        else { return print("failed to regist \(name) font") }
    }
}
