
//
//  NewsView.swift
//
//  Created by Ji hyuk Song on 22/10/01.
//

import SwiftUI

struct NewsView: View {
    @EnvironmentObject var newsViewModel: NewsViewModel
    @Environment(\.openURL) var openURL
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("관련기사")
                .font(.system(size: 20, weight: .bold))
                .padding(.bottom)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(newsViewModel.domesticNewsSectorD, id: \.self) { news in
                        ReferenceNewsArticle(title: news.title, description: news.description)
                            .onTapGesture {
                                openURL(URL(string: news.link)!)
                            }
                    }
                }
            }
        }
        .padding(.horizontal, 20)
    }
}
