//
//  SectorBPreview.swift
//
//  Created by Ji hyuk Song on 22/10/01.
//

import SwiftUI

struct ParagraphBView: View {
    @State var isClicked: Bool = false
    let paragraphBViewModel = ParagraphBViewModel()
    let width: CGFloat
    let height: CGFloat
    
    var body: some View {
        Button(action: { self.isClicked = true }) {
            Text(paragraphBViewModel.summary)
                .font(Font.custom("TimesNewRomanPS-BoldItalicMT", size: 13))
                .tracking(-0.4)
                .multilineTextAlignment(.leading)
                .frame(width: width * 1 / 5, height: height / 4)
                .shadow(radius: 0.4)
            
        }
        .foregroundColor(.black)
        .sheet(isPresented: $isClicked) {
            DetailParagraphBView(sheetB: $isClicked)
        }
    }
}
