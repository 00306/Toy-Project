//
//  EconomicCalendarView.swift
//
//  Created by Ji hyuk Song on 22/11/20.
//

import SwiftUI
import SkeletonUI

struct EconomicCalendarView: View {
    @State private var isClicked = false
    @EnvironmentObject var economicCalendarViewModel: EconomicCalendarViewModel

    var body: some View {
        Button(action: { self.isClicked = true }) {
            VStack(spacing: 3) {
                Text("Economic Calendar(EST)")
                    .font(.custom("BlackCastleMF", size: 18))
                    .foregroundColor(.black)
                
                HStack {
                    VStack(alignment: .leading, spacing: 2) {
                        ForEach(economicCalendarViewModel.leftSideDate) { leftSideDate in
                            Text("\(leftSideDate.name) || \(leftSideDate.date)")
                                .font(.custom("BlackCastleMF", size: 13))
                                }
                    }
                    .foregroundColor(.black)
                            
                    VStack(alignment: .leading, spacing: 2) {
                        ForEach(economicCalendarViewModel.rightSideDate) { rightSideDate in
                            Text("\(rightSideDate.name) || \(rightSideDate.date)")
                                .font(.custom("BlackCastleMF", size: 13))
                        }
                    }
                    .foregroundColor(.black)
                }
            }
        }
        .sheet(isPresented: $isClicked) { 
            DetailEconomicCalendarView()
        }
    }
}
