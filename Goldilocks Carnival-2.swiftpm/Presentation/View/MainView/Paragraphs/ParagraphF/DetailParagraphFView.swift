//
//  SectorFView.swift
//
//  Created by Ji hyuk Song on 22/10/01.
//

import SwiftUI

struct DetailParagraphFView: View {
    @Binding var sheetF: Bool
    @StateObject var sectorFReferenceNews = NewsViewModel()
    var detailParagraphFViewModel = DetailParagraphFViewModel()
    
    var body: some View {
        GeometryReader { paragraphF in
            Rectangle()
                .foregroundColor(.lightBrown)
                .edgesIgnoringSafeArea(.all)
            
            VStack(alignment: .leading) {
                ScrollView(showsIndicators: false) {
                    Text(detailParagraphFViewModel.headline)
                        .font(Font.custom("HeadlineOneHPLHS", size: 140))
                        .foregroundColor(.black)
                        .ignoresSafeArea()
                        .frame(width: paragraphF.size.width, height: paragraphF.size.height / 3)
                        .padding(.trailing)
                    
                    VStack(spacing: 20) {
                        SectorParagraph(title: detailParagraphFViewModel.titles[0], description: detailParagraphFViewModel.paragraphs[0])
                        
                        SectorImageView(image: detailParagraphFViewModel.images[0], description: detailParagraphFViewModel.imageDescriptions[0], imageSize: paragraphF.size.width * 2 / 3)
                    }
                    .padding(.bottom, 80)
                        
                    SectorParagraph(title: detailParagraphFViewModel.titles[1], description: detailParagraphFViewModel.paragraphs[1])
                        
                    VStack(spacing: 20) {
                        SectorParagraph(title: detailParagraphFViewModel.titles[2], description: detailParagraphFViewModel.paragraphs[2])
                    }
                    .padding(.bottom, 80)
                        
                    Divider()
                        .padding(10)
                        
                    VStack(spacing: 20) {
                        SectorParagraph(title: detailParagraphFViewModel.titles[3], description: detailParagraphFViewModel.paragraphs[3])
                        
                        ReferenceNewsView(newsViewModel: sectorFReferenceNews)
                            .onAppear {
                                sectorFReferenceNews.getData(query: detailParagraphFViewModel.detailParagraphFKeywords.randomElement()!)
                            }
                            .padding(.bottom, 100)
                    }
                    .padding(.trailing, 30)
                }
            }
        }
        .foregroundColor(.black)
    }
}
