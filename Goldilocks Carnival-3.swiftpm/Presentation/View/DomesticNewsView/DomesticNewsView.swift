//
//  DomesticNewsView.swift
//
//  Created by Ji hyuk Song on 22/12/31.
//

import SwiftUI
import Combine

struct DomesticNewsView: View {
    @Environment(\.openURL) var openNews
    @EnvironmentObject var newsKeywords: NewsKeywords
    @EnvironmentObject var newsArticle: NewsViewModel
    @StateObject var refreshButtons = RefreshButtons()
    
    let data = Array(1...20)
    let columns = [
        GridItem(.flexible(maximum: 1000), alignment: .topLeading)
    ]
    
    var body: some View {
        GeometryReader { proxy in
            VStack(alignment: .leading, spacing: 0) {
                HStack {
                    RefreshButtonView(buttonName: "REFRESH", isButtonClicked: $refreshButtons.refreshButtonClicked)
                        .onReceive(refreshButtons.$refreshButtonClicked.throttle(for: 1, scheduler: DispatchQueue.main, latest: false)) { refresh in
                            if refresh {
                                self.newsArticle.removeAllNews()
                                self.newsArticle.getData(query: "\(newsKeywords.keywords.randomElement()!)")
                                DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                                    refreshButtons.refreshButtonClicked = false
                                }
                            }
                        }
                        .disabled(refreshButtons.otherButtonsAreClickedExceptRefreshButton)
                    
                    RefreshButtonView(buttonName: "STOCKS", isButtonClicked: $refreshButtons.stockButtonClicked)
                        .onReceive(
                            refreshButtons.$stockButtonClicked.throttle(for: 1, scheduler: DispatchQueue.main, latest: true)) { stock in
                                if stock {
                                    self.newsArticle.removeAllNews()
                                    self.newsArticle.getData(query: "\( newsKeywords.stockKeywords.randomElement()!)")
                                    
                                    DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                                        refreshButtons.stockButtonClicked = false
                                    }
                                }
                            }
                            .disabled(refreshButtons.otherButtonsAreClickedExceptStockButton)
                    
                    
                    RefreshButtonView(buttonName: "CRYPTOCURRENCY", isButtonClicked: $refreshButtons.cryptocurrencyButtonClicked)
                        .onReceive(
                            refreshButtons.$cryptocurrencyButtonClicked.throttle(for: 1, scheduler: DispatchQueue.main, latest: false)) { cryptocurrency in
                                if cryptocurrency {
                                    self.newsArticle.removeAllNews()
                                    self.newsArticle.getData(query: "\( newsKeywords.cryptoCurrencyKeywords.randomElement()!)")
                                    
                                    DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                                        refreshButtons.cryptocurrencyButtonClicked = false
                                    }
                                }
                            }
                            .disabled(refreshButtons.otherButtonsAreClickedExceptCryptocurrencyButton)
                    
                    RefreshButtonView(buttonName: "MACROECONOMIC", isButtonClicked: $refreshButtons.macroeconomicButtonClicked)
                        .onReceive(
                            refreshButtons.$macroeconomicButtonClicked.throttle(for: 1, scheduler: DispatchQueue.main, latest: false)) { macroeconomic in
                                if macroeconomic {
                                    self.newsArticle.removeAllNews()
                                    self.newsArticle.getData(query: "\( newsKeywords.macroeconomicKeywords.randomElement()!)")
                                    
                                    DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                                        refreshButtons.macroeconomicButtonClicked = false
                                    }
                                }
                            }
                            .disabled(refreshButtons.otherButtonsAreClickedExceptMacroeconomicButton)
                }
                .padding(.vertical, 8)
                
                Text("Domestic News")
                    .font(Font.custom("HeadlineOneHPLHS", size: 50))
                    .padding(.top, 52)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHGrid(rows: columns, spacing: 20) {
                        ForEach(newsArticle.articles) { main in
                            Button(action: { openNews(URL(string: main.link)!) }) {
                                VStack {
                                    Spacer()
                                    
                                    Text(main.title)
                                        .font(.custom("AppleSDGothicNeo-Bold", size: 20))
                                        .padding(.bottom)
                                }
                                .frame(width: 160, height: 280)
                                .padding(12)
                                .foregroundColor(.black)
                                .background(Color.deepDarkBrown.cornerRadius(10).opacity(0.4).border(.black, width: 0.01).shadow(radius: 3))
                            }                            
                            .buttonStyle(RefreshButtonStyle())
                        }
                        
                        if newsArticle.articles.count > 0 {
                            Color.clear
                                .onAppear {
                                    DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                                        newsArticle.loadMoreData()   
                                    }
                                }
                        }
                    }
                    .frame(height: 320)
                    .padding()
                }

                Text("Indexes")
                    .font(Font.custom("HeadlineOneHPLHS", size: 50))
                    .padding(.top, 12)

                if #available(iOS 16, *) {
                    HStack {
                        Grid {
                            GridRow {
                                RoundedRectangle(cornerRadius: 10).fill(.blue.gradient).frame(width: 100, height: 100)
                                RoundedRectangle(cornerRadius: 10).fill(.blue.gradient).frame(width: 100, height: 100)
                            }
                            
                            GridRow {
                                RoundedRectangle(cornerRadius: 10).foregroundColor(.blue).frame(width: 100, height: 100)
                                RoundedRectangle(cornerRadius: 10).foregroundColor(.blue).frame(width: 100, height: 100)
                            }
                        }
                        RoundedRectangle(cornerRadius: 10).foregroundColor(.blue).frame(width: 200, height: 200)
                    }
                }
            }
            .frame(width: proxy.size.width, height: proxy.size.height)
            .padding()
            .background(Color.deepDarkBrown)
        }
    }
}
