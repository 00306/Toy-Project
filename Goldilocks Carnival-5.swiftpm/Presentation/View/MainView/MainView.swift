//
//  MainView.swift
//
//  Created by Ji hyuk Song on 22/12/31.
//

import SwiftUI
import ExyteGrid

struct MainView: View {
    var mainViewModel = MainViewModel()
    @State var isGIFClicked = false
    
    var body: some View {
        GeometryReader { proxy in
            Grid(tracks: 8, spacing: 10) {
                Text(mainViewModel.title)
                    .font(.custom("PlainBlack-Normal", size: 1000))
                    .foregroundColor(.black)
                    .minimumScaleFactor(0.01)
                    .lineLimit(1)
                    .gridSpan(column: 8, row: 1)
                    .frame(width: proxy.size.width / 2)
                
                GeometryReader { gif in
                    GIFView(isGIFClicked: self.isGIFClicked, width: gif.size.width, height: gif.size.height)                    
                }
                .gridSpan(column: 4, row: 4)
                
                Grid {
                    ParagraphAView()
                        .gridSpan(column: 2, row: 2)
                        .gridItemAlignment(.topLeading)
                }
                .padding(8)
                .background(Color.beige.cornerRadius(10).opacity(0.4).border(.black, width: 0.01).shadow(radius: 3))
                
                Grid {
                    ParagraphBView()
                        .gridSpan(column: 2, row: 2)
                        .gridItemAlignment(.topLeading)
                }
                .padding(8)
                .background(Color.beige.cornerRadius(10).opacity(0.4).border(.black, width: 0.01).shadow(radius: 3))

                Grid {
                    ParagraphCView()
                        .gridSpan(column: 4, row: 2)
                        .gridItemAlignment(.topLeading)
                }
                .padding(8)
                .background(Color.beige.cornerRadius(10).opacity(0.4).border(.black, width: 0.01).shadow(radius: 3))
                
                Grid {
                    ParagraphDView()
                        .gridSpan(column: 4, row: 2)
                        .gridItemAlignment(.topLeading)
                }
                .padding(8)
                .background(Color.beige.cornerRadius(10).opacity(0.4).border(.black, width: 0.01).shadow(radius: 3))
                
                Grid {
                    ParagraphFView()
                        .gridSpan(column: 4, row: 2)
                        .gridItemAlignment(.topLeading)
                }
                .padding(8)
                .background(Color.beige.cornerRadius(10).opacity(0.4).border(.black, width: 0.01).shadow(radius: 3))
                
                Grid {
                    ParagraphEView()
                        .gridSpan(column: 8, row: 2)
                        .gridItemAlignment(.topLeading)
                }
                .padding(8)
                .background(Color.beige.cornerRadius(10).opacity(0.4).border(.black, width: 0.01).shadow(radius: 3))                
            }
            .background(Image("background"))
        }
    }
}
