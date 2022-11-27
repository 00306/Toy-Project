//
//  RefreshButtonView.swift
//
//  Created by Ji hyuk Song on 22/11/20.
//

import SwiftUI

struct RefreshButtonView: View {
    let buttonName: String
    @Binding var isButtonClicked: Bool
    
    var body: some View {
        Button(action: { isButtonClicked = true }) {
            Text(buttonName)
                .font(Font.custom("HeadlineOneHPLHS", size: 65))
                .foregroundColor(.black)
                .padding(6)
                .background(Color.deepDarkBrown.cornerRadius(10).opacity(0.4).border(.black, width: 0.01).shadow(radius: 10))
        }
    }
}




