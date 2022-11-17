//
//  NewsViewModel.swift
//
//  Created by Ji hyuk Song on 22/10/01.
//

import SwiftUI
import Combine

class NewsViewModel: ObservableObject, Identifiable {
    let id = UUID()
    
    @Published var articles: [Item] = []
    @Published var domesticNewsSectorA: [Item] = []
    @Published var domesticNewsSectorB: [Item] = []
    @Published var domesticNewsSectorC: [Item] = []
    @Published var domesticNewsSectorD: [Item] = []
    
    private let clientID: String = "lMACzRvSLzoeiWJrYID4"
    private let clientSecret: String = "KpWSlzN_M9"
    
    func getData(query: String) {
        let url: String = "https://openapi.naver.com/v1/search/news.json?query=\(query)&display=20"
        let encodedQuery: String = url.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!
        let queryURL: URL = URL(string: encodedQuery)!
        var requestURL: URLRequest = URLRequest(url: queryURL)
        
        func addArticle(_ count: Int) {
            
        }
        
        requestURL.addValue(clientID, forHTTPHeaderField: "X-Naver-Client-Id")
        requestURL.addValue(clientSecret, forHTTPHeaderField: "X-Naver-Client-Secret")
        
        URLSession.shared.dataTask(with: requestURL) { data, response, error in
            self.articles.removeAll()
            self.domesticNewsSectorA.removeAll()
            self.domesticNewsSectorB.removeAll()
            self.domesticNewsSectorC.removeAll()
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) { 
                guard let data = data else { return }
                
                var news = try! JSONDecoder().decode(NewsArticle.self, from: data)
                let replace = ["&apos;", "&quot;", "<b>", "</b>", "&amp;", "&it;", "&gt;", "&lt;"]
                
                for i in 0..<news.items.count {
                    for words in replace {
                        news.items[i].title = news.items[i].title.replacingOccurrences(of: words, with: "")
                        news.items[i].description = news.items[i].description.replacingOccurrences(of: words, with: "")
                    }
                    self.articles.append(news.items[i])
                }
                self.domesticNewsSectorA = Array(self.articles[0..<2])
                self.domesticNewsSectorB = Array(self.articles[2..<4])
                self.domesticNewsSectorC = Array(self.articles[4..<10])
            }
        }
        .resume()
    }
}
