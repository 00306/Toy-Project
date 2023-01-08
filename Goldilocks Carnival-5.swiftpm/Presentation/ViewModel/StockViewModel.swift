//
//  StockViewModel.swift
//
//  Created by Ji hyuk Song on 23/01/08.
//

import SwiftUI
import Combine
import SwiftYFinance

class StockViewModel: ObservableObject {
    @Published var stockModel = StockModel()
    @Published var isBannerClicked: Bool = false
    @Published var price: Float? = 0.0
    let timer = Timer.publish(every: 3, tolerance: 1 ,on: .main, in: .common).autoconnect()
    
    var stockPrice: Float? {
        return stockModel.price
    }
    
    var fluctuatedPrice: Float {
        return stockModel.subtractPrice
    }
    
    var changePercent: Float? {
        return stockModel.changePercent
    }
    
    var currency: String? {
        return stockModel.currency
    }
    
    var fiftyTwoWeekLowPrice: Float? {
        return stockModel.fiftyTwoWeekLowPrice
        
    }
    
    var fiftyTwoWeekHighPrice: Float? {
        return stockModel.fiftyTwoWeekHighPrice
    }
    
    var dayLowPrice: Float? {
        return stockModel.dayLowPrice
    }
    
    var dayHighPrice: Float? {
        return stockModel.dayHighPrice
    }
    
    var openPrice: Float? {
        return stockModel.openPrice
    }
    
    var volume: Float? {
        return stockModel.volume
    }
    
    var averageVolume: Float? {
        return stockModel.averageVolume
    }
    
    var currentPrice: Float? {
        return stockModel.price
    }
    
    var closePrice: Float? {
        return stockModel.price! * changePercent!
    }
    
    var trailingPER: Float? {
        return stockModel.trailingPER
    }
    
    var previousClosePrice: Float? {
        return stockModel.previousClosePrice
    }
    
    var longName: String? {
        return stockModel.longName
    }
    
    let longNameDic: [String : String] = ["ADBE": "Adobe Inc.", 
                                       "AMZN": "Amazon.com, Inc.",
                                       "AMD": "Advanced Micro Devices, Inc.",
                                       "AXP": "American Express Company",
                                       "AMGN": "Amgen Inc.",
                                       "AAPL": "Apple Inc.",
                                       "TEAM": "Atlassian Corporation",
                                       "BAC": "Bank of America Corporation",
                                       "BRK-B": "Berkshire Hathaway Inc.",
                                       "BTC-USD": "Bitcoin USD",
                                       "BA": "The Boeing Company",
                                       "CAT": "Caterpillar Inc.",
                                       "CVX": "Chevron Corporation",
                                       "CSCO": "Cisco Systems, Inc.",
                                       "DIS": "The walt Disney Company",
                                       "^DJI": "Dow Jones Industrial Average",
                                       "ERCB.SG": "Telefonaktiebolaget L M Ericsson",
                                       "ETH-USD": "Ethereum USD",
                                       "GS": "The Goldman Sachs Group, Inc.",
                                       "GOOGL": "Alphabet Inc.",
                                       "IBM": "International Business Machines Corporation",
                                       "INTC": "Intel Corporation",
                                       "035720.KS": "카카오",
                                       "KOSPI.KS": "KOSPI Composite Index",
                                       "003550.KS": "(주)LG",
                                       "META": "META Platforms, Inc.",
                                       "MSFT": "Microsoft Corporation",
                                       "NDAQ": "Nasdaq, Inc.",
                                       "035420.KS": "네이버",
                                       "NKE": "NIKE, Inc.",
                                       "NTDOY": "Nintendo Co., Ltd.",
                                       "NVDA": "NVIDIA Corporation",
                                       "OXY": "Occidental Petroleum Corporation",
                                       "ORCL": "Oracle Corporation",
                                       "263750.KQ": "주식회사 펄어비스",
                                       "PEP": "PepsiCo, Inc.",
                                       "QCOM": "QUALCOMM Incorporated",
                                       "XRP-USD": "XRP USD",
                                       "^GSPC": "S&P 500",
                                       "005930.KS": "삼성전자(주)",
                                       "SAP": "SAP SE",
                                       "000660.KS": "SK하이닉스 주식회사",
                                       "SNAP": "Snap Inc.",
                                       "SONY": "SONY Group Corporation",
                                       "TSLA": "Tesla, Inc.",
                                       "TSMC34.SA": "Taiwan Semiconductor Manufacturing Company Limited",
                                       "TWTR-USD": "Twitter tokenized stock FTX USD",
                                       "UNH": "UnitedHealth Group Incorporated",
                                       "WMT": "Walmart Inc."]
    
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
    
    func getData(ticker: String) {
        DispatchQueue.global(qos: .background).async {
            SwiftYFinance.summaryDataBy(identifier: ticker) { data, error in
                guard error == nil else { return }
//                print(data?.price)
//                print(data?.summaryDetail)
                self.stockModel.changePercent = data?.price?.regularMarketChange!
                self.stockModel.openPrice = data?.summaryDetail?.open
                self.stockModel.dayLowPrice = data?.summaryDetail?.dayLow
                self.stockModel.dayHighPrice = data?.summaryDetail?.dayHigh
                self.stockModel.fiftyTwoWeekHighPrice = data?.summaryDetail?.fiftyTwoWeekHigh
                self.stockModel.fiftyTwoWeekLowPrice = data?.summaryDetail?.fiftyTwoWeekLow
                self.stockModel.currency = data?.summaryDetail?.currency
                self.stockModel.marketCap = data?.summaryDetail?.marketCap
                self.stockModel.trailingPER = data?.summaryDetail?.trailingPE
                self.stockModel.volume = data?.summaryDetail?.volume
                self.stockModel.averageVolume = data?.summaryDetail?.averageVolume
                self.stockModel.longName = data?.price?.longName
                
            }
        }
    }
       
    func priceFluctuation() {
        withAnimation(.easeInOut(duration: 1)) {
            self.stockModel.beforePrice = stockModel.currentPrice
            self.stockModel.currentPrice = self.price!
            self.stockModel.subtractPrice = stockModel.currentPrice - stockModel.beforePrice
        }
    }
}

