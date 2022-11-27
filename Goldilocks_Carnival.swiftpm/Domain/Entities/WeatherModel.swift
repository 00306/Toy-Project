//
//  WeatherModel.swift
//
//  Created by Ji hyuk Song on 22/11/20.
//

import SwiftUI

struct JSONWeatherData: Codable, Identifiable {
    var weather: [Weather]
    var id: Int
}

struct WeatherModel: Codable {
    var main: String
}

