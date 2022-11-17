//
//  DetaiDateView.swift
//
//  Created by Ji hyuk Song on 22/10/01.
//

import SwiftUI

struct DetailDateView: View {
    @StateObject var detailDate = DateViewModel()

    var body: some View {
        GeometryReader { detailDateScale in
            List {
                ForEach(detailDate.dates.releaseDates, id: \.self) { date in
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
                self.detailDate.getData()
            }
        }
    }
}
