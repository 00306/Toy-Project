//
//  EconomicCalendarViewModel.swift
//
//  Created by Ji hyuk Song on 22/11/20.
//

import Combine


class EconomicCalendarViewModel: ObservableObject {
    let economicCalendarAPI = EconomicCalendarAPI()
    @Published var dates = EconomicCalendarJSONData(releaseDates: [EconomicCalendarModel]())
    
    func getData() {
        economicCalendarAPI.fetchCalendarData()
            .sink { _ in
                
            } receiveValue: { date in
                self.dates = date
            }
    }
}

