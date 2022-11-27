//
//  SectorEView.swift
//
//  Created by Ji hyuk Song on 22/10/01.
//

import SwiftUI

struct DetailParagraphEView: View {
    @Binding var sheetE: Bool
    @StateObject var sectorEReferenceNews = NewsViewModel()
    var detailParagraphEViewModel = DetailParagraphEViewModel()
    
    var body: some View {
        GeometryReader { paragraphE in
            Rectangle()
                .foregroundColor(.lightBrown)
                .edgesIgnoringSafeArea(.all)
            
            VStack(alignment: .leading) {
                ScrollView(showsIndicators: false) {
                    Text(detailParagraphEViewModel.headline)
                        .font(Font.custom("HeadlineOneHPLHS", size: 130))
                        .foregroundColor(.black)
                        .ignoresSafeArea()
                        .frame(width: paragraphE.size.width, height: paragraphE.size.height / 3)
                        .padding(.trailing)
                    
                    VStack(spacing: 20) {
                        SectorParagraph(title: detailParagraphEViewModel.titles[0], description: detailParagraphEViewModel.paragraphs[0])
                    }
                    .padding(.bottom, 80)
                    
                    VStack(spacing: 20) {
                        SectorParagraph(title: detailParagraphEViewModel.titles[1], description: detailParagraphEViewModel.paragraphs[1])

                        HStack {
                            Spacer()
                            
                            SectorImageView(image: detailParagraphEViewModel.images[0], description: detailParagraphEViewModel.imageDescriptions[0], imageSize: paragraphE.size.width * 2 / 5)
                            
                            SectorImageView(image: detailParagraphEViewModel.images[1], description: detailParagraphEViewModel.imageDescriptions[1], imageSize: paragraphE.size.width * 2 / 5)
                            
                            Spacer()
                        }
                            
                        Text(detailParagraphEViewModel.paragraphs[2])
                            .font(.custom("AppleSDGothicNeo-Bold", size: 13))
                            .lineSpacing(15)
                            .multilineTextAlignment(.leading)
                            .padding(32)
                            
                        SectorImageView(image: detailParagraphEViewModel.images[2], description: detailParagraphEViewModel.imageDescriptions[2], imageSize: paragraphE.size.width * 2 / 3)
                    }
                    .padding(.bottom, 80)
                    
                    Divider()
                        .padding(10)
                    
                    VStack(spacing: 20) {
                        SectorParagraph(title: detailParagraphEViewModel.titles[2], description: detailParagraphEViewModel.paragraphs[3])
                        
                        ReferenceNewsView(newsViewModel: sectorEReferenceNews)
                            .onAppear {
                                sectorEReferenceNews.getData(query: detailParagraphEViewModel.detailParagraphEKeywords.randomElement()!)
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
