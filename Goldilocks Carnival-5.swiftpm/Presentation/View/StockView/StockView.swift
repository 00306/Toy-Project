//
//  StockView.swift
//
//  Created by Ji hyuk Song on 23/01/08.
//

import SwiftUI

struct StockView: View {
    let stockName: String
    let stockTicker: String
    @StateObject var stockViewModel = StockViewModel()
    
    var body: some View {
        Text(stockName)
    }
}
