//
//  MainModel.swift
//
//  Created by Ji hyuk Song on 22/11/20.
//
import Kingfisher
import SwiftUI

struct MainModel {
    let title: String
    let headline: String
}

struct DetailParagraph {
    let headline: String
    let titles: [String]
    let paragraphs: [String]
    let images: [String]
    let imageDescriptions: [String]
}

struct Paragraph {
    let title: String
    let subTitle: String
    let summary: String
}

struct KFAnimatedImage: UIViewRepresentable {
    var resource: Resource?
    
    func makeUIView(context: Context) -> AnimatedImageView {
        return AnimatedImageView()
    }
    
    func updateUIView(_ uiView: AnimatedImageView, context: Context) {
        uiView.kf.setImage(with: resource)
    }
}
