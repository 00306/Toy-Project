//
//  ParagraphBView.swift
//
//  Created by Ji hyuk Song on 22/11/20.
//

import SwiftUI

struct ParagraphBView: View {
    @State var isClicked: Bool = false
    let paragraphBViewModel = ParagraphBViewModel()
    
    var body: some View {
        Button(action: { self.isClicked = true }) {
            Text(paragraphBViewModel.summary)
                .font(Font.custom("TimesNewRomanPS-BoldItalicMT", size: 16))
                .tracking(-0.4)
                .multilineTextAlignment(.leading)
                .shadow(radius: 0.4)
            
        }
        .foregroundColor(.black)
        .sheet(isPresented: $isClicked) {
            DetailParagraphBView(sheetB: $isClicked)
        }
    }
}
