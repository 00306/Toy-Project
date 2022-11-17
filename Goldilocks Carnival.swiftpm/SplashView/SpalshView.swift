//
//  SplashView.swift
//
//  Created by Ji hyuk Song on 22/10/01.
//

import SwiftUI
import Combine

struct SplashView: View {
    @State private var isActive: Bool = false
    @EnvironmentObject var newsKeywords: NewsKeywords
    @EnvironmentObject var weatherAPI: WeatherViewModel
    @EnvironmentObject var fredAPI: DateViewModel
    @EnvironmentObject var domesticNews: NewsViewModel
    
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    init() {
        Font.registerFonts()
    }
    
    var body: some View {
        VStack {
            if isActive {
                ContentView()

            } else {
                ZStack {
                    Image("background")
                        .ignoresSafeArea(.all)
                    
                    VStack {
                        Text("Goldilocks")
                            .font(Font.custom("PlainBlack-Normal", size: 40))
                            .tracking(-0.2)
                            .foregroundColor(.black)
                        
                        Text("Carnival")
                            .font(Font.custom("PlainBlack-Normal", size: 80))
                            .tracking(-0.2)
                            .foregroundColor(.black)
                    }
                }
            }
        }
        .onReceive(timer) { input in
            self.weatherAPI.getWeather()
            self.fredAPI.getData()
            self.domesticNews.getData(query: newsKeywords.keywords.randomElement()!)
            if weatherAPI.locationWeather.isEmpty {
                withAnimation {
                    self.isActive = true
                    self.timer.upstream.connect().cancel()
                }
            }
        }
    }
}



