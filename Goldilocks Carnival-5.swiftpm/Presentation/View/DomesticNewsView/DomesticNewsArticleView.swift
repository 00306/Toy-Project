//
//  DomesticNewsArticleView.swift
//
//  Created by Ji hyuk Song on 22/11/20.
//

import SwiftUI

struct DomesticNewsArticleView: View {
    @Environment(\.openURL) var newsUrl
    let title: String
    let description: String
    let url: String
    
    var body: some View {
        Button(action: { newsUrl(URL(string: url)!) }) {
            VStack {
                Text(title)
                    .font(.custom("AppleSDGothicNeo-Bold", size: 20))
                    .padding(.bottom)
                Text(description)
                    .font(.custom("AppleSDGothicNeo-Bold", size: 13))
            }
            .frame(width: 200, height: 200)
            .padding(20)
            .foregroundColor(.black)
            .background(Color.deepDarkBrown.border(.black, width: 0.01).shadow(radius: 3))
        }
        .buttonStyle(RefreshButtonStyle())
        
    }
}
