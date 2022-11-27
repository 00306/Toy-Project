//
//  DateViewModel.swift
//
//  Created by Ji hyuk Song on 22/10/01.
//

import SwiftUI

class DateViewModel: ObservableObject {
    @Published var dates = ReleaseDate(releaseDates: [Release]())
    @Published var leftBannerDate = [Release]()
    @Published var rightBannerDate = [Release]()
    
    func getData() {
        self.leftBannerDate.removeAll()
        self.rightBannerDate.removeAll()
        
        let url = URL(string: "https://api.stlouisfed.org/fred/releases/dates?api_key=84a8b30e179aa0c7505f304608aef0b8&file_type=json")!
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            DispatchQueue.global(qos: .userInteractive).async {
                guard let data = data else { return }
                let indicators = try! JSONDecoder().decode(ReleaseDate.self, from: data)
                self.dates = indicators
                for i in 0..<3 {
                    self.leftBannerDate.append(self.dates.releaseDates[i])
                    self.rightBannerDate.append(self.dates.releaseDates[i+3])
                }
            }
        }
        .resume()
    }
}

