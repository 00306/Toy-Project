//
//  EconomicCalendarAPI.swift
//
//  Created by Ji hyuk Song on 22/11/20.
//

import SwiftUI
import Combine
import SwiftSoup

struct EconomicCalendarAPI {
    func fetchURL() {
        let urlAddress = "https://kr.investing.com/economic-calendar/"
        guard let url = URL(string: urlAddress) else { return }
        if let html = try? String(contentsOf: url, encoding: .utf8) {
            do {
                let doc: Document = try SwiftSoup.parse(html)
                let title: Elements = try doc.select("#economicCalendarData > tbody")
                for eventRow in title {
                    let event = try eventRow.text()
                    print(event)
                }
            }
            catch let error {
                print(error)
            }
        }
    }
    
    public func fetchCalendarData() -> AnyPublisher<EconomicCalendarJSONData, Error> {
        let url = URL(string: "https://api.stlouisfed.org/fred/releases/dates?api_key=84a8b30e179aa0c7505f304608aef0b8&file_type=json")!
        
        return URLSession.shared.dataTaskPublisher(for: url)
            .subscribe(on: DispatchQueue.global(qos: .background))
            .receive(on: DispatchQueue.main)
            .map { data, response in
                return data
            }
            .decode(type: EconomicCalendarJSONData.self, decoder: JSONDecoder())
            .eraseToAnyPublisher()
    }
}
