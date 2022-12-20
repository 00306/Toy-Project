//
//  NewsModel.swift
//
//  Created by Ji hyuk Song on 22/11/20.
//

import SwiftUI

struct NewsModel: Codable {
    var start: Int
    var display: Int
    var items: [Item]
}

struct Item: Codable, Hashable, Identifiable {
    let id = UUID()
    var title: String
    var originallink: String
    var link: String
    var description: String
    
}
