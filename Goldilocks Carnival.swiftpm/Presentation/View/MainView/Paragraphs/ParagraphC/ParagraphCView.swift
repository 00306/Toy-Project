//
//  SectorCPreview.swift
//
//  Created by Ji hyuk Song on 22/10/01.
//

import SwiftUI

struct ParagraphCView: View {
    @State var isClicked: Bool = false
    let paragraphCViewModel = ParagraphCViewModel()
    let width: CGFloat
    let height: CGFloat
    
    var body: some View {
        Button(action: { self.isClicked = true }) {
            HStack(alignment: .top) {
                Text(paragraphCViewModel.title)
                    .font(.custom("Oklahoma", size: 100))
                
                Text(paragraphCViewModel.summary)
                    .font(Font.custom("TimesNewRomanPS-BoldItalicMT", size: 13))
                    .tracking(-0.4)
                    .multilineTextAlignment(.leading)
                    .shadow(radius: 0.4)
            }
            .frame(width: width * 10 / 16, height: height / 5)
            .foregroundColor(.black)
            .sheet(isPresented: $isClicked) {
                DetailParagraphCView(sheetC: $isClicked)
            }
        }
        
    }
}
