//
//  ParagraphDView.swift
//
//  Created by Ji hyuk Song on 22/11/20.
//

import SwiftUI

struct ParagraphDView: View {
    @State var isClicked: Bool = false
    let paragraphDViewModel = ParagraphDViewModel()
    
    var body: some View {
        Button(action: { self.isClicked = true }) {
            VStack(alignment: .leading) {
                Text(paragraphDViewModel.title)
                    .font(Font.custom("HeadlineOneHPLHS", size: 1000))
                    .minimumScaleFactor(0.01)
                    .lineLimit(1)
                
                Text(paragraphDViewModel.subTitle)
                    .font(Font.custom("HeadlineOneHPLHS", size: 40))
                    .minimumScaleFactor(0.01)
                    .lineLimit(1)
                
                Text(paragraphDViewModel.summary)
                    .font(Font.custom("TimesNewRomanPS-BoldItalicMT", size: 16))
                    .tracking(-0.4)
                    .multilineTextAlignment(.leading)
                    .shadow(radius: 0.4)
            }
            .foregroundColor(.black)
        }
        .sheet(isPresented: $isClicked) {
            DetailParagraphDView(sheetD: $isClicked)
        }
        
    }
}
