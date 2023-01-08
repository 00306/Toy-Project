//
//  ContentView.swift
//
//  Created by Ji hyuk Song on 22/11/20.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var network: NetworkViewModel
    @State private var selection = 2
    
    var body: some View {
        GeometryReader { tabview in
            if !network.isNetworkConnected {
                NetworkErrorView()
            } else {
                TabView(selection: $selection) {
                    StocksView()
                        .tabItem {
                                Image(systemName: "chart.line.uptrend.xyaxis")
                                Text("Stocks")
                                    .foregroundColor(.black)
                        }
                        .tag(1)
                    
                    MainView()
                        .tabItem {
                                Image(systemName: "house.fill")
                                Text("Main")
                                    .foregroundColor(.black)
                        }
                        .tag(2)
                    
                    DomesticNewsView()
                        .tabItem {
                                Image(systemName: "newspaper.fill")
                                Text("Domestic")
                        }
                        .tag(3)
                    
                    EconomicCalendarView()
                        .tabItem {
                            Image(systemName: "calendar")
                            Text("Calendar")
                        }
                        .tag(4)
                }
                .tabViewStyle(.automatic)
                .frame(width: tabview.size.width, height: tabview.size.height)
                
            }
        }
    }
}


//            .onAppear {                      
//                                    for fontFamily in UIFont.familyNames {
//                                        print("----\(fontFamily)")
//                                        for fontName in UIFont.fontNames(forFamilyName: fontFamily) {
//                                            print(fontName)
//                                        }
//                                    }
//                    
//                }
