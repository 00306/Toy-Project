//
//  GIFView.swift
//
//  Created by Ji hyuk Song on 22/11/20.
//

import SwiftUI
import Kingfisher

struct GIFView: View {
    @State var isGIFClicked: Bool
    let width: CGFloat
    let height: CGFloat
    let url = URL(string: "https://invesbrain.com/wp-content/uploads/2021/08/PowellGif-1.gif")!
    
    var body: some View {
        ZStack {
            Button(action: { self.isGIFClicked = true }) {
                KFAnimatedImage(resource: url)
                    .grayscale(1)
                    .frame(width: width * 4 / 7, height: height / 4)
                    .clipped()
                    .cornerRadius(3)
                    .overlay(Rectangle().fill(.brown).opacity(0.4))
            }
            .sheet(isPresented: $isGIFClicked) {
                DetailGIFView(gifSheet: $isGIFClicked)
            }
        }
        
    }
}


