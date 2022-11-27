//
//  StocksView.swift
//
//  Created by Ji hyuk Song on 22/10/01.
//

import SwiftUI
import WaterfallGrid

struct StocksView: View {
    @StateObject var stockViewModel = StockViewModel()
    
    var body: some View {
        GeometryReader { stockView in
            VStack {
                ScrollView(showsIndicators: false) {
                    WaterfallGrid(stockViewModel.stocks, id: \.self) { stockName in
                        StockView(stockName: stockName, stockTicker: self.stockViewModel.tickers[stockName] ?? "")
                    }
                    .gridStyle(columns: 5, spacing: 1, animation: .easeOut(duration: 0.4))
                    .padding()
                }
            }
            .background(Color.beige)
            .ignoresSafeArea(.all)
            .onDisappear(perform: {
                stockViewModel.timer.upstream.connect().cancel()
                
            })
        }
    }
}
