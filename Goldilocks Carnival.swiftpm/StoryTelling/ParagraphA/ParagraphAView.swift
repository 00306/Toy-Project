//
//  SectorAPreview.swift
//
//  Created by Ji hyuk Song on 22/10/01.
//

import SwiftUI

struct ParagraphAView: View {
    @State var isClicked: Bool = false
    let paragraphAViewModel = ParagraphAViewModel()
    let width: CGFloat
    let height: CGFloat
    
    var body: some View {
        Button(action: { self.isClicked = true }) {
            VStack(spacing: -8) {
                Text(paragraphAViewModel.title)
                    .font(.custom("Oklahoma", size: 100))
                    .padding(.top, -13)
                
                Text(paragraphAViewModel.summary)
                    .font(Font.custom("TimesNewRomanPS-BoldItalicMT", size: 13))
                    .tracking(-0.4)
                    .multilineTextAlignment(.leading)
                    .shadow(radius: 0.4)
            }
        }
        .foregroundColor(.black)
        .frame(width: width * 1 / 5, height: height / 4)
        .sheet(isPresented: $isClicked) {
            DetailParagraphAView(sheetA: $isClicked)
        }
    }
}
