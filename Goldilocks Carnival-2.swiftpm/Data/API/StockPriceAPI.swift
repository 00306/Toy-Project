//
//  StockPriceAPI.swift
//
//  Created by Ji hyuk Song on 22/11/20.
//

import SwiftUI
import SwiftYFinance

class StockPriceAPI {
    var price: Float = 0.0
    
    func fetchStockData(ticker: String) {
        DispatchQueue.global(qos: .userInteractive).async {
            SwiftYFinance.recentDataBy(identifier: "\(ticker)") {
                data, error in
                
                /*
                 data ~>
                 struct RecentStockData{
                 var currency: String?
                 var symbol: String?
                 var exchangeName: String?
                 var instrumentType: String?
                 var firstTradeDate: Int?
                 var regularMarketTime: Int?
                 var gmtoffset: Int?
                 var timezone: String?
                 var exchangeTimezoneName: String?
                 var regularMarketPrice: Float?
                 var chartPreviousClose: Float?
                 var previousClose: Float?
                 var scale: Int?
                 var priceHint: Int?
                 }
                 */
                
                guard let data = data else { return }
                self.price = data.regularMarketPrice!
            }
        }
    }
}
