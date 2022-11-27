//
//  DateModel.swift
//
//  Created by Ji hyuk Song on 22/10/01.
//

import SwiftUI

struct ReleaseDate: Codable, Hashable {
    let releaseDates: [Release]
    
    enum CodingKeys: String, CodingKey {
        case releaseDates = "release_dates"
    }
}

struct Release: Codable, Hashable, Identifiable {
    let id = UUID()
    let name: String
    let date: String
    
    enum CodingKeys: String, CodingKey {
        case name = "release_name"
        case date
    }
}


