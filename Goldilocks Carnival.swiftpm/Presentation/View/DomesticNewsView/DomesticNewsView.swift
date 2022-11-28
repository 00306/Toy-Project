//
//  DomesticNewsView.swift
//
//  Created by Ji hyuk Song on 22/11/20.
//

import SkeletonUI
import SwiftUI
import Combine

struct DomesticNewsView: View {
    @Environment(\.openURL) var openNews
    @EnvironmentObject var newsKeywords: NewsKeywords
    @EnvironmentObject var newsArticle: NewsViewModel
    @StateObject var refreshButtons = RefreshButtons()
    
    var body: some View { 
            VStack(alignment: .leading, spacing: 0) {
                HStack(alignment: .top) {
                    GeometryReader { title in
                        HStack(alignment: .top) {
                            VStack(alignment: .leading, spacing: 10) {
                                HStack {
                                    Text("Domestic\nNews")
                                        .font(Font.custom("HeadlineOneHPLHS", size: 1000))
                                        .foregroundColor(.black)
                                        .minimumScaleFactor(0.01)
                                        .padding(.leading, 6)
                                        
                                        Spacer()
                                }
                                .frame(width: title.size.width * 3 / 5)
                                
                                RoundedRectangle(cornerRadius: 2).fill(.black).frame(width: title.size.width * 3 / 5, height: 8)
                                
                                HStack(spacing: -2) {
                                    VStack(alignment: .leading) {
                                        HStack(alignment: .top) {
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
                                        }
                                        
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
                                        .frame(width: title.size.width * 2 / 5)
                                }
                            }
                            .frame(width: title.size.width * 3 / 5)
                            
                            VStack(spacing: 2) {
                                HStack(spacing: 10) {
                                        SkeletonForEach(with: newsArticle.domesticNewsSectorA) { loading, main in
                                            GeometryReader { domesticSectorA in
                                                DomesticNewsArticleView(title: main?.title ?? "", description: main?.description ?? "", url: main?.link ?? "")
                                                    .frame(width: domesticSectorA.size.width, height: domesticSectorA.size.height)
                                                    .skeleton(with: loading)
                                                    .shape(type: .rounded(.radius(10, style: .continuous)))
                                                    .appearance(type: .gradient(.linear, color: .brown, background: .clear, radius: 10, angle: 3))
                                                    .animation(type: .linear())
                                            }
                                    }
                                }
                                .padding(.leading, 6)
                                
                                HStack(spacing: 10) {                                
                                    SkeletonForEach(with: newsArticle.domesticNewsSectorB) { loading, main in
                                        GeometryReader { domesticSectorB in
                                            DomesticNewsArticleView(title: main?.title ?? "", description: main?.description ?? "", url: main?.link ?? "")
                                                .frame(width: domesticSectorB.size.width, height: domesticSectorB.size.height)
                                                .skeleton(with: loading)
                                                .shape(type: .rounded(.radius(10, style: .continuous)))
                                                .appearance(type: .gradient(.linear, color: .brown, background: .clear, radius: 10, angle: 3))
                                                .animation(type: .linear())
                                        }
                                    }
                                }
                                .padding(.leading, 6)
                            }
                        }
                    }
                }
                
                VStack(spacing : 10) {
                    GeometryReader { scrollview in
                        ScrollView(showsIndicators: false) { 
                            Spacer()
                            
                            SkeletonForEach(with: newsArticle.domesticNewsSectorC) { loading, article in
                                DomesticNewsArticleView(title: article?.title ?? "", description: article?.description ?? "", url: article?.link ?? "")
                                    .skeleton(with: loading)
                                    .shape(type: .rounded(.radius(10, style: .continuous)))
                                    .appearance(type: .gradient(.linear, color: .brown, background: .clear, radius: 10, angle: 3))
                                    .animation(type: .linear())
                                    
                            }
                            .frame(width: scrollview.size.width, height: scrollview.size.height * 2 / 10)
                            
                            Spacer()
                        }
                        .frame(height: scrollview.size.height)
                    }
                }
            }
            .padding()
            .background(Color.deepDarkBrown)
    }
}
