//
//  MainViewModel.swift
//
//  Created by Ji hyuk Song on 22/10/01.
//

import SwiftUI
import Kingfisher

struct KFAnimatedImage: UIViewRepresentable {
    var resource: Resource?
    
    func makeUIView(context: Context) -> AnimatedImageView {
        return AnimatedImageView()
    }
    
    func updateUIView(_ uiView: AnimatedImageView, context: Context) {
        uiView.kf.setImage(with: resource)
    }
}

struct MainViewModel {
    @State var clickedImage = false
    @State var stockMarket = false
    var mainModel = MainModel(title: "The Goldilocks Canival", headline: "GIANT STEP!")
    
    var title: String {
        return mainModel.title
    }
    
    var headline: String {
        return mainModel.headline
    }
}
