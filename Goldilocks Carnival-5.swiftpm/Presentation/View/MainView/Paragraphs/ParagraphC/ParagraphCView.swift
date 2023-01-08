//
//  ParagraphCView.swift
//
//  Created by Ji hyuk Song on 22/11/20.
//

import SwiftUI

struct ParagraphCView: View {
    @State var isClicked: Bool = false
    let paragraphCViewModel = ParagraphCViewModel()
    
    var body: some View {
        Button(action: { self.isClicked = true }) {
            HStack(alignment: .top) {
                Text(paragraphCViewModel.title)
                    .font(.custom("Oklahoma", size: 1000))
                    .minimumScaleFactor(0.01)
                    .lineLimit(1)
                
                Text(paragraphCViewModel.summary)
                    .font(Font.custom("TimesNewRomanPS-BoldItalicMT", size: 16))
                    .tracking(-0.4)
                    .multilineTextAlignment(.leading)
                    .shadow(radius: 0.4)
            }
            .foregroundColor(.black)
            .sheet(isPresented: $isClicked) {
                DetailParagraphCView(sheetC: $isClicked)
            }
        }
        
    }
}
