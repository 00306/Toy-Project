//
//  WeatherViewModel.swift
//
//  Created by Ji hyuk Song on 22/10/01.
//

import SwiftUI

class WeatherViewModel: ObservableObject {
    @Published var locationWeather: [String : String] = [:]
    
    func getWeather() {
        let metropolitanLocation = ["Busan": (35.17918071792382, 129.0744280507977), 
                                    "Daegu": (35.871438808768715, 128.6018753138009), 
                                    "Seoul": (37.5691297484139, 126.97368238180421), 
                                    "Ulsan": (35.540499189664324, 129.31212548675722), 
                                    "Incheon": (37.403729884705015, 126.64990564729342), 
                                    "Daejeon": (36.355468424688056, 127.38480340520745), 
                                    "Gwangju": (35.160553830632516, 126.85260598392323)]
                
        for (key, value) in metropolitanLocation {
            guard let url = URL(string: "https://api.openweathermap.org/data/2.5/weather?lat=\(value.0)&lon=\(value.1)&appid=0035eba5f8d5bf765aee202d3ff6ed81")
            else { return }
            URLSession.shared.dataTask(with: url) { data, response, error in
                guard let data = data else { return }
                let weather1 = try! JSONDecoder().decode(LocationWeather.self, from: data)
                self.locationWeather["\(key)"] = weather1.weather[0].main
            }
            .resume()
        }
    }
}
