//
//  Extension Font.swift
//
//  Created by Ji hyuk Song on 22/10/01.
//

import SwiftUI
import UIKit

extension Font {
    static func registerFonts() {
        self.register(name: "BlackCastleMF", withExtension: "ttf")
        self.register(name: "HEADOH", withExtension: "TTF")
        self.register(name: "Saithik-Handwritten", withExtension: "ttf")
        self.register(name: "Blackstone-Hand_3", withExtension: "ttf")
        self.register(name: "calendar note tfb", withExtension: "ttf")
        self.register(name: "Showtime-R9Ke", withExtension: "ttf")
        self.register(name: "Oklahoma", withExtension: "ttf")
        self.register(name: "ACFilmstrip", withExtension: "otf")
        self.register(name: "budmo.jiggler-regular", withExtension: "ttf")
        self.register(name: "Film Premieres", withExtension: "otf")
        self.register(name: "Plain Black", withExtension: "ttf")
        self.register(name: "FlyingHollander", withExtension: "ttf")
        self.register(name: "Apple SD Gothic Neo Bold", withExtension: "ttf")
        self.register(name: "21582253_마포꽃섬_TTF", withExtension: "ttf")
        self.register(name: "TitleWaveRegular-l9ve", withExtension: "ttf")
    }
    
    static func register(name: String, withExtension: String) {
        guard let url = Bundle.main.url(forResource: name, withExtension: withExtension),CTFontManagerRegisterFontsForURL(url as CFURL, .process, nil) 
        else { return print("failed to regist \(name) font") }
    }
}
