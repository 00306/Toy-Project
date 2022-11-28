//
//  SectorDPreview.swift
//
//  Created by Ji hyuk Song on 22/10/01.
//

import SwiftUI

struct ParagraphDView: View {
    @State var isClicked: Bool = false
    let paragraphDViewModel = ParagraphDViewModel()
    let width: CGFloat
    let height: CGFloat
    
    var body: some View {
        Button(action: { self.isClicked = true }) {
            VStack(alignment: .leading) {
                Text(paragraphDViewModel.title)
                    .font(Font.custom("HeadlineOneHPLHS", size: 100))
                    .minimumScaleFactor(0.01)
                
                Text(paragraphDViewModel.subTitle)
                    .font(Font.custom("HeadlineOneHPLHS", size: 40))
                    .minimumScaleFactor(0.01)
                
                Text(paragraphDViewModel.summary)
                    .font(Font.custom("TimesNewRomanPS-BoldItalicMT", size: 13))
                    .tracking(-0.4)
                    .multilineTextAlignment(.leading)
                    .shadow(radius: 0.4)
            }
            .frame(width: width * 6 / 16, height: height / 5)
            .foregroundColor(.black)
        }
        .sheet(isPresented: $isClicked) {
            DetailParagraphDView(sheetD: $isClicked)
        }
        
    }
}
