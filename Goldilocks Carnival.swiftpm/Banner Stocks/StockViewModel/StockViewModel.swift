//
//  StockViewModel.swift
//
//  Created by Ji hyuk Song on 22/10/01.
//

import SwiftUI
import SwiftYFinance

class StockViewModel: ObservableObject {
    @Published var stockModel = StockModel()
    
    var stockPrice: Float? {
        return stockModel.price
    }
    
    var fluctuatedPrice: Float {
        return stockModel.subtractPrice
    }
    
    let tickers : [String : String] = ["adobe": "ADBE", 
                                       "amazon": "AMZN",
                                       "AMD": "AMD",
                                       "AmericanExpress": "AXP",
                                       "AMGEN": "AMGN",
                                       "Apple": "AAPL",
                                       "Atlassian": "TEAM",
                                       "BankofAmerica": "BAC",
                                       "BerkshireHathaway": "BRK-B",
                                       "Bitcoin": "BTC-USD",
                                       "Boeing": "BA",
                                       "caterpillar": "CAT",
                                       "Chevron": "CVX",
                                       "cisco": "CSCO",
                                       "Disney": "DIS",
                                       "DowJones": "^DJI",
                                       "Ericsson": "ERCB.SG",
                                       "ethereum": "ETH-USD",
                                       "GoldmanSachs": "GS",
                                       "Google": "GOOGL",
                                       "IBM": "IBM",
                                       "intel": "INTC",
                                       "Kakao": "035720.KS",
                                       "KOSPI": "KOSPI.KS",
                                       "LG": "003550.KS",
                                       "Meta": "META",
                                       "MicroSoft": "MSFT",
                                       "Nasdaq": "NDAQ",
                                       "Naver": "035420.KS",
                                       "Nike": "NKE",
                                       "Nintendo": "NTDOY",
                                       "Nvidia": "NVDA",
                                       "OccidentalPetroleum": "OXY",
                                       "oracle": "ORCL",
                                       "Pearlabyss": "263750.KQ",
                                       "Pepsi": "PEP",
                                       "Qualcomm": "QCOM",
                                       "ripple": "XRP-USD",
                                       "S&P500": "^GSPC",
                                       "Samsung": "005930.KS",
                                       "SAP": "SAP",
                                       "SKhynix": "000660.KS",
                                       "SNAP": "SNAP",
                                       "Sony": "SONY",
                                       "Tesla": "TSLA",
                                       "tsmc": "TSMC34.SA",
                                       "Twitter": "TWTR",
                                       "UnitedHealthGroup": "UNH",
                                       "Walmart": "WMT"]
    
    let stocks: [String] = ["adobe", "amazon", "AMD", "AmericanExpress", "AMGEN", "Apple", "Atlassian", "BankofAmerica", "BerkshireHathaway", "Bitcoin", "Boeing", "caterpillar" ,"Chevron", "cisco", "Disney", "DowJones", "Ericsson", "ethereum" ,"GoldmanSachs", "Google", "IBM", "intel", "Kakao", "KOSPI" ,"LG", "Meta", "MicroSoft", "Nasdaq", "Naver", "Nike", "Nintendo" ,"Nvidia", "OccidentalPetroleum", "oracle", "Pearlabyss" ,"Pepsi", "Qualcomm", "ripple" ,"S&P500", "Samsung", "SAP", "SKhynix" ,"SNAP", "Sony", "Tesla", "tsmc", "Twitter", "UnitedHealthGroup", "Walmart"]
    
    func getStock(ticker: String) {
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
                if error != nil{
                    return print("??")
                }
                self.stockModel.price = data!.regularMarketPrice
            }
        }
    }
      
    func priceFluctuation() {
        withAnimation(.easeInOut(duration: 1)) {
            self.stockModel.beforePrice = stockModel.currentPrice
            self.stockModel.currentPrice = stockModel.price!
            self.stockModel.subtractPrice = stockModel.currentPrice - stockModel.beforePrice
        }
    }
    
}


