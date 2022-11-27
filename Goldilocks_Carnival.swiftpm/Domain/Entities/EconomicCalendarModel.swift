//
//  DateModel.swift
//
//  Created by Ji hyuk Song on 22/11/20.
//

import SwiftUI

struct EconomicCalendarJSONData: Codable, Hashable {
    let releaseDates: [EconomicCaledarModel]
    
    enum CodingKeys: String, CodingKey {
        case releaseDates = "release_dates"
    }
}

struct EconomicCaledarModel: Codable, Hashable, Identifiable {
    let id = UUID()
    let name: String
    let date: String
}

extension EconomicCaledarModel {
    enum CodingKeys: String, CodingKey {
        case name = "release_name"
        case date
    }
}

