//
//  BannerView.swift
//
//  Created by Ji hyuk Song on 22/10/01.
//

import SwiftUI

struct BannerView: View {
    @StateObject var stockViewModel = StockViewModel()
    let width: CGFloat
    let height: CGFloat
    
    var body: some View {
        Button(action: { self.stockViewModel.isBannerClicked = true  }) {
            HStack(spacing: 1) {
                Text("Stock Market")
                    .font(Font.custom("HeadlineOneHPLHS", size: 1000))
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.white)
                    .minimumScaleFactor(0.01)
                    .padding(2)
            }
            .frame(width: width * 16 / 41, height: height / 17)
            .background(Color.black)
            .border(.black, width: 5)
            .cornerRadius(3)
        }
        .sheet(isPresented: $stockViewModel.isBannerClicked) {
            StocksView()
        }
        
        Rectangle().fill(.black).frame(width: 1)
        
        WeatherView()
        
        Rectangle().fill(.black).frame(width: 1)
        
        EconomicCalendarView()
            .environmentObject(NewsKeywords())
    }
}
