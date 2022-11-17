//
//  SectorAView.swift
//
//  Created by Ji hyuk Song on 22/10/01.
//

import SwiftUI

struct DetailParagraphAView: View {
    @Binding var sheetA: Bool
    @StateObject var sectorAReferenceNews = NewsViewModel()
    var detailParagraphAViewModel = DetailParagraphAViewModel()
    
    var body: some View {
        GeometryReader { paragraphA in
            Rectangle()
                .foregroundColor(.lightBrown)
                .edgesIgnoringSafeArea(.all)
            
            VStack(alignment: .leading) {
                ScrollView(showsIndicators: false) {
                    Text(detailParagraphAViewModel.headline)
                        .font(Font.custom("HeadlineOneHPLHS", size: 150))
                        .foregroundColor(.black)
                        .ignoresSafeArea()
                        .frame(width: paragraphA.size.width, height: paragraphA.size.height / 3)
                        .padding(.trailing)
                        
                    VStack(spacing: 20) {
                        SectorParagraph(title: detailParagraphAViewModel.titles[0], description: detailParagraphAViewModel.paragraphs[0])
                        
                        SectorImageView(image: detailParagraphAViewModel.images[0], description: detailParagraphAViewModel.imageDescriptions[0], imageSize: paragraphA.size.width * 2 / 3)
                    }
                    .padding(.bottom, 80)
                            
                    VStack(spacing: 20) {
                        SectorParagraph(description: detailParagraphAViewModel.paragraphs[1])
                            
                        HStack {
                            Spacer()
                            
                            Image(detailParagraphAViewModel.images[1])
                                .resizable()
                                .scaledToFit()
                                .frame(width: paragraphA.size.width * 2 / 3)
                                .padding(.top)
                            
                            Spacer()
                        }
                        .padding(.bottom, 80)
                        
                        SectorParagraph(description: detailParagraphAViewModel.paragraphs[2])
                    
                        VStack(spacing: 20) {
                            SectorImageView(image: detailParagraphAViewModel.images[2], description: detailParagraphAViewModel.imageDescriptions[1], imageSize: paragraphA.size.width * 4 / 5)
                            
                            SectorImageView(image: detailParagraphAViewModel.images[3], description: detailParagraphAViewModel.imageDescriptions[2], imageSize: paragraphA.size.width * 1 / 4)
                        }
                    }
                    .padding(.bottom, 80)
                            
                    VStack(spacing: 20) {
                        SectorParagraph(title: detailParagraphAViewModel.titles[1], description: detailParagraphAViewModel.paragraphs[3])
                    
                        SectorImageView(image: detailParagraphAViewModel.images[4], description: detailParagraphAViewModel.imageDescriptions[3], imageSize: paragraphA.size.width * 2 / 3)
                            .padding(.bottom, 40)
                                
                        SectorImageView(image: detailParagraphAViewModel.images[5], description: detailParagraphAViewModel.imageDescriptions[4], imageSize: paragraphA.size.width * 2 / 3)
                    }
                    .padding(.bottom, 80)
                            
                    Divider()
                        .padding(10)
                    
                    VStack(spacing: 20) {
                        SectorParagraph(title: detailParagraphAViewModel.titles[2], description: detailParagraphAViewModel.paragraphs[4])
                    
                        NewsView()
                            .onAppear {
                                sectorAReferenceNews.getData(query: detailParagraphAViewModel.detailParagraphAKeywords.randomElement()!)
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
