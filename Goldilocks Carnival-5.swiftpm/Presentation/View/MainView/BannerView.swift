//
//  BannerView.swift
//
//  Created by Ji hyuk Song on 22/10/01.
//

import SwiftUI

struct BannerView: View {
    @StateObject var stockViewModel = StockViewModel()
    
    var body: some View {
        Button(action: { self.stockViewModel.isBannerClicked = true  }) {
            ZStack {
                Color.black
                
                HStack(spacing: 1) {
                    Text("Stock Market")
                        .font(Font.custom("HeadlineOneHPLHS", size: 1000))
                        .multilineTextAlignment(.leading)
                        .foregroundColor(.white)
                        .minimumScaleFactor(0.01)
                        .padding(2)
                }
            }
            
        }
        .sheet(isPresented: $stockViewModel.isBannerClicked) {
            StocksView()
        }
    }
}
