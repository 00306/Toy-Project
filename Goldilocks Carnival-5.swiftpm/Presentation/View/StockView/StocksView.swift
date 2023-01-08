//
//  StocksView.swift
//
//  Created by Ji hyuk Song on 23/01/08.
//

import SwiftUI

struct StocksView: View {
    @StateObject var stockViewModel = StockViewModel()
    @State var searchText = ""
    
    var searchResult: [(String, String)] {
        if searchText.isEmpty {
            return stockViewModel.tickers.sorted(by: <)
        } else {
            return stockViewModel.tickers.filter { $0.key.contains(searchText.description.localizedUppercase) || $0.value.contains(searchText.description.localizedUppercase) }.sorted(by: <)
        }
    }
    
    var body: some View {
        NavigationView {
            List {
                ForEach(searchResult, id: \.0) { name, ticker in
                    NavigationLink {
                        StockView(stockName: name, stockTicker: ticker)
                    } label: {
                        StockListView(ticker: ticker)
                    }
                }

            }
            .searchable(text: $searchText, placement: .sidebar, prompt: Text("Search"))
        }

    }
}
