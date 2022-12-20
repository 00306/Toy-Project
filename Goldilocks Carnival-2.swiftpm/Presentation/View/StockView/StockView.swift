//
//  StockView.swift
//
//  Created by Ji hyuk Song on 22/10/01.
//

import SwiftUI

struct StockView: View {
    let stockName: String
    let stockTicker: String?
    @StateObject var stockViewModel = StockViewModel()
    
    var body: some View {
        VStack {
            VStack(spacing: 0) {
                Image(stockName)
                    .resizable()
                    .scaledToFit()
                    .padding(15)
                
                Text("\(String(format: "%.2f", stockViewModel.stockPrice!))")
                    .font(Font.system(size: 13, weight: .bold))
                    .foregroundColor(.white)
                    .padding(.bottom)
            }
            .background(stockViewModel.fluctuatedPrice > 0 ? Color.burgendy : stockViewModel.fluctuatedPrice == 0 ? Color.black : Color.deepGreen)
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                stockViewModel.getData(ticker: self.stockTicker ?? "")
                stockViewModel.priceFluctuation()
            }
        }
        .onReceive(stockViewModel.timer) { _ in
                stockViewModel.priceFluctuation()
                stockViewModel.getData(ticker: self.stockTicker ?? "")
        }
    }
}
