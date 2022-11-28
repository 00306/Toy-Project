//
//  DetailEconomicCalendarView.swift
//
//  Created by Ji hyuk Song on 22/11/20.
//

import SwiftUI

struct DetailEconomicCalendarView: View {
    @StateObject var detailEconomicCalendar = EconomicCalendarViewModel()

    var body: some View {
        GeometryReader { detailDateScale in
            List {
                ForEach(detailEconomicCalendar.dates.releaseDates, id: \.self) { date in
                    HStack {
                        Text("\(date.date) || \(date.name)")
                            .font(.custom("BlackCastleMF", size: 18))
                            .foregroundColor(.black)
                    }
                    .listRowBackground(Color.brown)
                }
            }
            .frame(width: detailDateScale.size.width)
            .onAppear {
                self.detailEconomicCalendar.getData()
            }
        }
    }
}
