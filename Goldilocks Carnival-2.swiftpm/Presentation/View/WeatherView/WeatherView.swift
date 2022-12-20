//
//  WeatherView.swift
//
//  Created by Ji hyuk Song on 22/10/01.
//

import SwiftUI
import Combine

struct WeatherView: View {
    @EnvironmentObject var weatherViewModel: WeatherViewModel
    @State private var weatherListChange = true 
    let weatherTimer = Timer.publish(every: 3, tolerance: 3, on: .main, in: .common).autoconnect()

    var body: some View {
        VStack(alignment: .leading, spacing: -3) {
            Text("Metropolitan Weather")
                .font(.custom("BlackCastleMF", size: 18))
                    
            if weatherListChange {
                VStack(alignment: .leading, spacing: 1) {
                    if let seoul = weatherViewModel.locationWeather["Seoul"] ?? "" {
                        Text("Seoul - \(seoul)")
                    }
                    if let busan = weatherViewModel.locationWeather["Busan"] ?? "" {
                        Text("Busan - \(busan)")
                    }
                    if let ulsan = weatherViewModel.locationWeather["Ulsan"] ?? "" {
                        Text("Ulsan - \(ulsan)")
                    }
                    
                }
                .font(Font.custom("BlackCastleMF", size: 15))
                .transition(.opacity)
                        
                } else if !weatherListChange {
                    VStack(alignment: .leading, spacing: 1) {
                        if let incheon = weatherViewModel.locationWeather["Incheon"] ?? "" {
                            Text("Incheon - \(incheon)")
                        }
                        if let daegu = weatherViewModel.locationWeather["Daegu"] ?? "" {
                            Text("Daegu - \(daegu)")
                        }
                        if let daejeon = weatherViewModel.locationWeather["Daejeon"] ?? "" {
                            Text("Daejeon - \(daejeon)")
                        }
                        if let gwangju = weatherViewModel.locationWeather["Gwangju"] ?? "" {
                            Text("Gwangju - \(gwangju)")
                        }
                    }
                    .font(Font.custom("BlackCastleMF", size: 15))
                    .transition(.opacity)
                }
        }
        .onReceive(weatherTimer) { input in
            withAnimation {
                self.weatherListChange.toggle()
                self.weatherViewModel.getData()
            }
        }
        .foregroundColor(.black)
    }
}
