//
//  ParagraphEView.swift
//
//  Created by Ji hyuk Song on 22/11/20.
//

import SwiftUI

struct ParagraphEView: View {
    @State var isClicked: Bool = false
    let paragraphEViewModel = ParagraphEViewModel()
    
    var body: some View {
        VStack(alignment: .leading, spacing: -1) {
            Text(paragraphEViewModel.title)
                .font(Font.custom("HeadlineOneHPLHS", size: 60))
                .foregroundColor(.black)
                .minimumScaleFactor(0.01)
            
            HStack(alignment: .top) {
                Button(action: { self.isClicked = true }) {
                    Image("warran buffett")
                        .resizable()
                        .scaledToFit()
                        .grayscale(1)
                        .overlay(Rectangle().fill(.brown.opacity(0.4)))
                        .cornerRadius(3)
                    
                    Text(paragraphEViewModel.summary)
                        .font(Font.custom("TimesNewRomanPS-BoldItalicMT", size: 16))
                        .tracking(-0.4)
                        .multilineTextAlignment(.leading)
                        .shadow(radius: 0.4)
                }
                .sheet(isPresented: $isClicked) {
                    DetailParagraphEView(sheetE: $isClicked)
                }
            }
            .foregroundColor(.black)
        }
    }
}
