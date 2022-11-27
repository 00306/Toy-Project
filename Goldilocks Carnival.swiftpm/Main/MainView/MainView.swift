//
//  MainView.swift
//
//  Created by Ji hyuk Song on 22/10/01.
//

import SwiftUI

struct MainView: View {
    var mainViewModel = MainViewModel()

    var body: some View {
        GeometryReader { proxy in
            VStack(spacing: 0) {
                HStack {
                    Text(mainViewModel.title)
                        .font(.custom("PlainBlack-Normal", size: 70))
                        .foregroundColor(.black)
                }
                .frame(width: proxy.size.width / 1.5, height: proxy.size.height / 8)
                .padding(.vertical, 11)
                        
                HStack(alignment: .bottom, spacing: 5) {
                    BannerView(isStockMarketClicked: mainViewModel.stockMarket, width: proxy.size.width, height: proxy.size.height)
                }
                .frame(width: proxy.size.width * 25 / 27, height: proxy.size.height / 17)
                
                ZStack {
                    Image("border")
                        .resizable()
                        .frame(width: proxy.size.width, height: proxy.size.height * 27 / 33)
                    
                    GeometryReader { geometry in
                        VStack(spacing: 3) {
                            Text(mainViewModel.headline)
                                .font(Font.custom("HeadlineOneHPLHS", size: 1000))
                                .foregroundColor(.black)
                                .lineLimit(1)
                                .frame(width: geometry.size.width, height: geometry.size.height / 4)
                                .minimumScaleFactor(0.01)
                            
                            HStack(alignment: .top) {
                                ParagraphAView(width: geometry.size.width , height: geometry.size.height)
                                
                                ParagraphBView(width: geometry.size.width, height: geometry.size.height)
                                
                                ImageSector(isClicked: mainViewModel.clickedImage, width: geometry.size.width, height: geometry.size.height)
                            }
                            .frame(width: geometry.size.width, height: geometry.size.height / 4)
                                
                            HStack(alignment: .top) {
                                ParagraphCView(width: geometry.size.width, height: geometry.size.height)
                                
                                ParagraphDView(width: geometry.size.width, height: geometry.size.height)
                            }
                            .frame(width: geometry.size.width, height: geometry.size.height / 5)
                            .padding(.top, 5)

                            HStack(alignment: .top) {
                                ParagraphEView(width: geometry.size.width, height: geometry.size.height)
                                
                                ParagraphFView(width: geometry.size.width, height: geometry.size.height)
                            }
                            .frame(width: geometry.size.width, height: geometry.size.height * 22 / 85)
                        }
                    }
                    .frame(width: proxy.size.width * 25 / 27, height: proxy.size.height * 20 / 25)
                }
            }
        }
        .background(Color.beige)
        .ignoresSafeArea(.all)
    }
}
