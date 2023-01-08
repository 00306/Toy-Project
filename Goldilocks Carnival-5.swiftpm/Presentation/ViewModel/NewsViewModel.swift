//
//  NewsViewModel.swift
//
//  Created by Ji hyuk Song on 22/11/20.
//

import SwiftUI
import Combine

class NewsViewModel: ObservableObject, Identifiable {
    let id = UUID()
    let newsAPI = NewsAPI()
    @Published var articles: [Item] = []
    
    func removeAllNews() {
        self.articles.removeAll(keepingCapacity: true)
    }
    
    func loadMoreData() {
        getData(query: "economy")
    }
    
    func getData(query: String) {
        newsAPI.fetchNewsData(query: query)
            .sink { _ in

            } receiveValue: { newsModel in
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                    for article in newsModel.items {
                        self.articles.append(article)                    
                    }
                    removeEntities()
                }
                
            }
        
        func removeEntities() {
            let entities = ["&apos;", "&quot;", "<b>", "</b>", "&amp;", "&it;", "&gt;", "&lt;"]
            
            for i in 0..<self.articles.count {
                for entity in entities {
                    self.articles[i].title = self.articles[i].title.replacingOccurrences(of: entity, with: "")
                    self.articles[i].description = self.articles[i].description.replacingOccurrences(of: entity, with: "")
                }
            } 
        }
    }
}
