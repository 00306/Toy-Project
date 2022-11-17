//
//  SectorCView.swift
//
//  Created by Ji hyuk Song on 22/10/01.
//

import SwiftUI

struct DetailParagraphCView: View {
    @Binding var sheetC: Bool
    @StateObject var sectorCReferenceNews = NewsViewModel()
    var detailParagraphCViewModel = DetailParagraphCViewModel()
    
    var body: some View {
        GeometryReader { paragraphC in
            Rectangle()
                .foregroundColor(.lightBrown)
                .edgesIgnoringSafeArea(.all)
            
            VStack(alignment: .leading) {
                ScrollView(showsIndicators: false) {
                    Text(detailParagraphCViewModel.headline)
                        .font(Font.custom("HeadlineOneHPLHS", size: 150))
                        .foregroundColor(.black)
                        .ignoresSafeArea()
                        .frame(width: paragraphC.size.width, height: paragraphC.size.height / 3)
                        .padding(.trailing)
                    
                    VStack(spacing: 20) {
                        SectorParagraph(title: detailParagraphCViewModel.titles[0], description: detailParagraphCViewModel.paragraphs[0])
                        
                        SectorImageView(image: detailParagraphCViewModel.images[0], description: detailParagraphCViewModel.imageDescriptions[0], imageSize: paragraphC.size.width * 2 / 3)
                            
                        SectorImageView(image: detailParagraphCViewModel.images[1], description: detailParagraphCViewModel.imageDescriptions[1], imageSize: paragraphC.size.width * 2 / 3)
                            
                        SectorImageView(image: detailParagraphCViewModel.images[2], description: detailParagraphCViewModel.imageDescriptions[2], imageSize: paragraphC.size.width * 2 / 3)
                    }
                    .padding(.bottom, 80)
                    
                    VStack(spacing: 20) {
                        SectorParagraph(title: detailParagraphCViewModel.titles[1], description: detailParagraphCViewModel.paragraphs[1])
                            
                        SectorImageView(image: detailParagraphCViewModel.images[3], description: detailParagraphCViewModel.imageDescriptions[3], imageSize: paragraphC.size.width * 2 / 3)
                        
                        SectorParagraph(description: detailParagraphCViewModel.paragraphs[2])
                            
                        HStack {
                            Spacer()
                        
                            Image(detailParagraphCViewModel.images[4])
                                .resizable()
                                .scaledToFit()
                                .frame(width: paragraphC.size.width * 2 / 3)
                                .shadow(radius: 3)
                                
                            Spacer()
                        }
                        
                        SectorParagraph(description: detailParagraphCViewModel.paragraphs[3])
                            
                        HStack {
                            Spacer()
                            
                            Image(detailParagraphCViewModel.images[5])
                                .resizable()
                                .scaledToFit()                                    
                                .frame(width: 200)
                                .shadow(radius: 3)
                            
                            Spacer()
                        }
                    }
                    .padding(.bottom, 80)
                        
                        
                    VStack(spacing: 20) {
                        SectorParagraph(title: detailParagraphCViewModel.titles[2], description: detailParagraphCViewModel.paragraphs[4])
                        
                        HStack {
                            Spacer()
                            
                            Image(detailParagraphCViewModel.images[6])
                                .resizable()
                                .scaledToFit()
                            
                            Spacer()
                        }
                    }
                    .padding(.bottom, 80)
                        
                    Divider()
                        .padding(10)
                        
                    VStack(spacing: 20) {
                        SectorParagraph(title: detailParagraphCViewModel.titles[3], description: detailParagraphCViewModel.paragraphs[5])
                        
                        NewsView()
                            .onAppear {
                                sectorCReferenceNews.getData(query: detailParagraphCViewModel.detailParagraphCKeywords[0])
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
