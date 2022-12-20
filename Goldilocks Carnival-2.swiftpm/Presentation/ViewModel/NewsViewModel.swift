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
    @Published var domesticNewsSectorA: [Item] = []
    @Published var domesticNewsSectorB: [Item] = []
    @Published var domesticNewsSectorC: [Item] = []
    
    func removeAllNews() {
        self.articles.removeAll()
        self.domesticNewsSectorA.removeAll()
        self.domesticNewsSectorB.removeAll()
        self.domesticNewsSectorC.removeAll()
    }
    
    func getData(query: String) {
        removeAllNews()
        
        newsAPI.fetchNewsData(query: query)
            .sink { _ in

            } receiveValue: { newsModel in
                self.articles = newsModel.items
                removeEntities()
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                    self.domesticNewsSectorA = Array(self.articles[0..<2])
                    self.domesticNewsSectorB = Array(self.articles[2..<4])
                    self.domesticNewsSectorC = Array(self.articles[4..<10])
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
