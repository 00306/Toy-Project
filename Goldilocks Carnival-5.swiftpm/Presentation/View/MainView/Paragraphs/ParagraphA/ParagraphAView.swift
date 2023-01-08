//
//  ParagraphAView.swift
//
//  Created by Ji hyuk Song on 22/11/20.
//

import SwiftUI

struct ParagraphAView: View {
    @State var isClicked: Bool = false
    let paragraphAViewModel = ParagraphAViewModel()
    
    var body: some View {
        Button(action: { self.isClicked = true }) {
            VStack(spacing: -8) {
                Text(paragraphAViewModel.title)
                    .font(.custom("Oklahoma", size: 1000))
                    .minimumScaleFactor(0.01)
                    .lineLimit(1)
                
                Text(paragraphAViewModel.summary)
                    .font(Font.custom("TimesNewRomanPS-BoldItalicMT", size: 16))
                    .tracking(-0.4)
                    .multilineTextAlignment(.leading)
                    .shadow(radius: 0.4)
            }
        }
        .foregroundColor(.black)
        .sheet(isPresented: $isClicked) {
            DetailParagraphAView(sheetA: $isClicked)
        }
    }
}
