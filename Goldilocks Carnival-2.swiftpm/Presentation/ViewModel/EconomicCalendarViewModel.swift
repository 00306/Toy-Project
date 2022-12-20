//
//  EconomicCalendarViewModel.swift
//
//  Created by Ji hyuk Song on 22/11/20.
//

import Combine

class EconomicCalendarViewModel: ObservableObject {
    let economicCalendarAPI = EconomicCalendarAPI()
    @Published var dates = EconomicCalendarJSONData(releaseDates: [EconomicCaledarModel]())
    @Published var leftSideDate: [EconomicCaledarModel] = []
    @Published var rightSideDate: [EconomicCaledarModel] = []
    
    func getData() {
        self.leftSideDate.removeAll()
        self.rightSideDate.removeAll()
        
        economicCalendarAPI.fetchCalendarData()
            .sink { _ in
           
            } receiveValue: { date in
                self.dates = date
                for i in 0..<3 {
                    self.leftSideDate.append(self.dates.releaseDates[i])
                    self.rightSideDate.append(self.dates.releaseDates[i+3])
                }
            }
    }
}

