//
//  NewsAPI.swift
//
//  Created by Ji hyuk Song on 22/11/20.
//

import SwiftUI
import Combine

struct NewsAPI {
    private let clientID: String = "lMACzRvSLzoeiWJrYID4"
    private let clientSecret: String = "KpWSlzN_M9"
    
    public func fetchNewsData(query: String) -> AnyPublisher<NewsArticle, Error> {
        let url: String = "https://openapi.naver.com/v1/search/news.json?query=\(query)&display=20"
        let encodedQuery: String = url.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!
        let queryURL: URL = URL(string: encodedQuery)!
        var requestURL: URLRequest = URLRequest(url: queryURL)
        
        requestURL.addValue(clientID, forHTTPHeaderField: "X-Naver-Client-Id")
        requestURL.addValue(clientSecret, forHTTPHeaderField: "X-Naver-Client-Secret")
        
        return URLSession.shared.dataTaskPublisher(for: requestURL)
            .subscribe(on: DispatchQueue.global(qos: .background))
            .receive(on: DispatchQueue.main)
            .map { data, response in
                return data
            }
            .decode(type: NewsArticle.self, decoder: JSONDecoder())
            .eraseToAnyPublisher()
    }
}
