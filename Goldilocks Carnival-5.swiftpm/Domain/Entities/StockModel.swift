//
//  StockModel.swift
//
//  Created by Ji hyuk Song on 23/01/08.
//

import SwiftUI

struct StockModel {
    let ticker: String = ""
    var longName: String? = ""
    var volume: Float? = 0.0
    var averageVolume: Float? = 0.0
    var marketCap: Float? = 0.0
    var changePercent: Float? = 0.0
    var openPrice: Float? = 0.0
    var dayLowPrice: Float? = 0.0
    var dayHighPrice: Float? = 0.0
    var trailingPER: Float? = 0.0
    var fiftyTwoWeekLowPrice: Float? = 0.0
    var fiftyTwoWeekHighPrice: Float? = 0.0
    var currency: String?
    let previousClosePrice: Float? = 0.0
    var price: Float? = 0.0
    var currentPrice: Float = 0.0
    var beforePrice: Float = 0.0
    var subtractPrice: Float = 0.0
}

