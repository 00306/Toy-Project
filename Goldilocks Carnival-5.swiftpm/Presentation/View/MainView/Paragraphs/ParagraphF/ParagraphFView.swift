//
//  ParagraphFView.swift
//
//  Created by Ji hyuk Song on 22/11/20.
//

import SwiftUI

struct ParagraphFView: View {
    @State var isClicked: Bool = false
    let paragraphFViewModel = ParagraphFViewModel()
    
    var body: some View {
        Button(action: { self.isClicked = true }) {
            VStack(alignment: .leading, spacing: 0) {
                Text(paragraphFViewModel.title)
                    .font(Font.custom("HeadlineOneHPLHS", size: 200))
                    .minimumScaleFactor(0.01)
                
                Text(paragraphFViewModel.subTitle)
                    .font(Font.custom("HeadlineOneHPLHS", size: 27))
                    .minimumScaleFactor(0.01)
                    .multilineTextAlignment(.leading)
                
                Text(paragraphFViewModel.summary)
                    .font(Font.custom("TimesNewRomanPS-BoldItalicMT", size: 16))
                    .tracking(-0.4)
                    .multilineTextAlignment(.leading)
                    .shadow(radius: 0.4)
            }
        }
        .foregroundColor(.black)
        .sheet(isPresented: $isClicked) {
            DetailParagraphFView(sheetF: $isClicked)
        }
    }
}
