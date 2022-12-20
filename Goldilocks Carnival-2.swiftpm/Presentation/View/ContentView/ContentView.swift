//
//  ContentView.swift
//
//  Created by Ji hyuk Song on 22/11/20.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var network: NetworkViewModel
    
    var body: some View {
        GeometryReader { tabview in
            if !network.isNetworkConnected {
                NetworkErrorView()
            } else {
                TabView() {
                    MainView()
                    
                    DomesticNewsView()
                }
                .tabViewStyle(.page(indexDisplayMode: .never))
                    .ignoresSafeArea()
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
