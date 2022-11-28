//
//  SectorFPreview.swift
//
//  Created by Ji hyuk Song on 22/10/01.
//

import SwiftUI

struct ParagraphFView: View {
    @State var isClicked: Bool = false
    let paragraphFViewModel = ParagraphFViewModel()
    let width: CGFloat
    let height: CGFloat
    
    var body: some View {
        Button(action: { self.isClicked = true }) {
            VStack(alignment: .leading, spacing: 0) {
                Text(paragraphFViewModel.title)
                    .font(Font.custom("HeadlineOneHPLHS", size: 200))
                    .minimumScaleFactor(0.01)
                    .frame(height: height * 5 / 85)
                
                Text(paragraphFViewModel.subTitle)
                    .font(Font.custom("HeadlineOneHPLHS", size: 27))
                    .minimumScaleFactor(0.01)
                    .multilineTextAlignment(.leading)
                    .frame(height: height * 4 / 85)
                
                Text(paragraphFViewModel.summary)
                    .font(Font.custom("TimesNewRomanPS-BoldItalicMT", size: 13))
                    .tracking(-0.4)
                    .multilineTextAlignment(.leading)
                    .shadow(radius: 0.4)
                    .frame(height: height * 11 / 85)
                
            }
            .frame(width: width * 6 / 16)
        }
        .foregroundColor(.black)
        .sheet(isPresented: $isClicked) {
            DetailParagraphFView(sheetF: $isClicked)
        }
    }
}
