//
//  WeatherModel.swift
//
//  Created by Ji hyuk Song on 22/10/01.
//

import SwiftUI

struct LocationWeather: Codable, Identifiable {
    var weather: [Weather]
    var id: Int
}

struct Weather: Codable {
    var main: String
}

