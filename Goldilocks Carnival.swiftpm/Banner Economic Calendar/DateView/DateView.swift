//
//  DateView.swift
//
//  Created by Ji hyuk Song on 22/10/01.
//

import SwiftUI
import SkeletonUI

struct DateView: View {
    @State private var isClicked = false
    @EnvironmentObject var dateViewModel: DateViewModel

    var body: some View {
        Button(action: { self.isClicked = true }) {
            VStack(spacing: 3) {
                Text("Economic Calendar(EST)")
                    .font(.custom("BlackCastleMF", size: 18))
                    .foregroundColor(.black)
                
                HStack {
                    VStack(alignment: .leading, spacing: 2) {
                        ForEach(dateViewModel.leftBannerDate) { leftSideDate in
                            Text("\(leftSideDate.name) || \(leftSideDate.date)")
                                .font(.custom("BlackCastleMF", size: 13))
                                }
                    }
                    .foregroundColor(.black)
                            
                    VStack(alignment: .leading, spacing: 2) {
                        ForEach(dateViewModel.rightBannerDate) { rightSideDate in
                            Text("\(rightSideDate.name) || \(rightSideDate.date)")
                                .font(.custom("BlackCastleMF", size: 13))
                        }
                    }
                    .foregroundColor(.black)
                }
            }
        }
        .sheet(isPresented: $isClicked) { 
            DetailDateView()
        }
    }
}
