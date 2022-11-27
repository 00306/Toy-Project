//
//  RefreshButtonView.swift
//
//  Created by Ji hyuk Song on 22/10/01.
//

import SwiftUI

struct RefreshButtonView: View {
    let name: String
    @Binding var isClicked: Bool
    
    var body: some View {
        Button(action: { isClicked = true }) {
            Text(name)
                .font(Font.custom("HeadlineOneHPLHS", size: 65))
                .foregroundColor(.black)
                .padding(6)
                .background(Color.deepDarkBrown.cornerRadius(10).opacity(0.4).border(.black, width: 0.01).shadow(radius: 10))
        }
    }
}




