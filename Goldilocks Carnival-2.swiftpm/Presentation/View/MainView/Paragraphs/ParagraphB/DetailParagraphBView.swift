//
//  SectorBView.swift
//
//  Created by Ji hyuk Song on 22/10/01.
//

import SwiftUI

struct DetailParagraphBView: View {
    @Binding var sheetB: Bool
    @StateObject var sectorBReferenceNews = NewsViewModel()
    var detailParagraphBViewModel = DetailParagraphBViewModel()
    
    var body: some View {
        GeometryReader { paragraphB in
            Rectangle()
                .foregroundColor(.lightBrown)
                .edgesIgnoringSafeArea(.all)
            
            VStack(alignment:. leading) {
                ScrollView(showsIndicators: false) {
                    Text(detailParagraphBViewModel.headline)
                        .font(Font.custom("HeadlineOneHPLHS", size: 130))
                        .foregroundColor(.black)
                        .ignoresSafeArea()
                        .frame(width: paragraphB.size.width, height: paragraphB.size.height / 3)
                        .padding(.trailing)
                    
                    VStack(spacing: 20) {
                        SectorParagraph(title: detailParagraphBViewModel.titles[0], description: detailParagraphBViewModel.paragraphs[0])
                        
                        SectorImageView(image: detailParagraphBViewModel.images[0], description: detailParagraphBViewModel.imageDescriptions[0], imageSize: paragraphB.size.width * 2 / 3)
                    }
                    .padding(.bottom, 80)
                    
                    VStack(spacing: 20) {
                        SectorParagraph(title: detailParagraphBViewModel.titles[1], description: detailParagraphBViewModel.paragraphs[1])                        
                    }
                    .padding(.bottom, 80)
                    
                    Divider()
                        .padding(10)
                    
                    VStack(spacing: 20) {
                        SectorParagraph(title: detailParagraphBViewModel.titles[2], description: detailParagraphBViewModel.paragraphs[2])
                        
                        ReferenceNewsView(newsViewModel: sectorBReferenceNews)
                            .onAppear {
                                sectorBReferenceNews.getData(query: detailParagraphBViewModel.detailParagraphBKeywords[0])
                            }
                            .padding(.bottom, 100)
                    }
                    .padding(.trailing, 30)
                }
            }
            .foregroundColor(.black)
        }
    }
}
