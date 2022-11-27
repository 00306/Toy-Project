//
//  StockView.swift
//
//  Created by Ji hyuk Song on 22/10/01.
//

import SwiftUI

struct StockView: View {
    let stockName: String
    let stockTicker: String?
    let timer = Timer.publish(every: 5, tolerance: 3 ,on: .main, in: .common).autoconnect()
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
                    .onAppear {
                        stockViewModel.getStock(ticker: self.stockTicker ?? "")
                        stockViewModel.priceFluctuation()
                    }
                    .onReceive(timer) { input in
                        DispatchQueue.global(qos: .userInteractive).async {
                            stockViewModel.priceFluctuation()
                            stockViewModel.getStock(ticker: self.stockTicker ?? "")
                        }
                    }
            }
            .background(stockViewModel.fluctuatedPrice > 0 ? Color.burgendy : stockViewModel.fluctuatedPrice == 0 ? Color.black : Color.deepGreen)
        }
    }
}
