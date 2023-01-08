//
// StockListView.swift
//
//
//  Created by Ji hyuk Song on 23/01/08.
//

import SwiftUI

struct StockListView: View {
    @StateObject var stockViewModel = StockViewModel()
    let ticker: String
    var longName: String {
        return stockViewModel.longNameDic[ticker] ?? "Unknown"
    }
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(ticker)
                    .font(.system(size: 16))
                    .fontWeight(.black)
                Text(longName)
                    .font(.system(size: 12))
                    .foregroundColor(.gray)
                    .lineLimit(1)
            }
        }
        .onAppear {
            stockViewModel.getData(ticker: ticker)
        }
    }
}
