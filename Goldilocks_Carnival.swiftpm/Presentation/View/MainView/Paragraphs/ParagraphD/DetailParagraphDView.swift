//
//  SectorDView.swift
//
//  Created by Ji hyuk Song on 22/10/01.
//

import SwiftUI

struct DetailParagraphDView: View {
    @Binding var sheetD: Bool
    @StateObject var sectorDReferenceNews = NewsViewModel()
    var detailParagraphDViewModel = DetailParagraphDViewModel()
    
    var body: some View {
        GeometryReader { paragraphD in
            Rectangle()
                .foregroundColor(.lightBrown)
                .edgesIgnoringSafeArea(.all)
            
            VStack(alignment: .leading) {
                ScrollView(showsIndicators: false) {
                    Text(detailParagraphDViewModel.headline)
                        .font(Font.custom("HeadlineOneHPLHS", size: 130))
                        .foregroundColor(.black)
                        .ignoresSafeArea()
                        .frame(width: paragraphD.size.width, height: paragraphD.size.height / 3)
                        .padding(.trailing)
                    
                    VStack(alignment: .leading, spacing: 20) {
                        SectorParagraph(title: detailParagraphDViewModel.titles[0], description: detailParagraphDViewModel.paragraphs[0])
                            
                        Image(detailParagraphDViewModel.images[0])
                            .resizable()
                            .scaledToFit()
                            .frame(width: paragraphD.size.width * 2 / 3)
                        
                        
                        VStack(alignment: .leading, spacing: 20) {
                            Text(detailParagraphDViewModel.titles[1])
                                .font(.custom("AppleSDGothicNeo-Bold", size: 17))
                                .padding()
                            
                            HStack {
                                Spacer()
                                
                                Image(detailParagraphDViewModel.images[1])
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: paragraphD.size.width * 2 / 3)
                                    .grayscale(1)
                                
                                Spacer()
                            }
                            
                            Text(detailParagraphDViewModel.paragraphs[1])
                                .font(.custom("AppleSDGothicNeo-Bold", size: 13))
                                .lineSpacing(15)
                                .multilineTextAlignment(.leading)
                                .padding()
                            
                            HStack {
                                Text(detailParagraphDViewModel.paragraphs[2])
                                    .font(.custom("AppleSDGothicNeo-Bold", size: 13))
                                    .lineSpacing(15)
                                    .multilineTextAlignment(.leading)
                                    .padding()
                                    
                                Image(detailParagraphDViewModel.images[2])
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: paragraphD.size.width * 2 / 3)
                            }
                            
                            Text(detailParagraphDViewModel.paragraphs[3])
                                .font(.custom("AppleSDGothicNeo-Bold", size: 13))
                                .lineSpacing(15)
                                .multilineTextAlignment(.leading)
                                .padding()
                        }
                        .padding()
                    }
                    .padding(.bottom, 80)
                    
                    VStack(spacing: 20) {
                        SectorParagraph(title: detailParagraphDViewModel.titles[2], description: detailParagraphDViewModel.paragraphs[4])
                        
                        HStack {
                            Spacer()
                            
                            Image(detailParagraphDViewModel.images[3])
                                .resizable()
                                .scaledToFit()
                                .frame(width: paragraphD.size.width * 2 / 3)
                                .shadow(radius: 3)
                                .padding(.bottom, 20)
                            
                            Spacer()
                        }
                            
                        SectorImageView(image: detailParagraphDViewModel.images[4], description: detailParagraphDViewModel.imageDescriptions[0], imageSize: paragraphD.size.width * 2 / 3)
                            .padding(.bottom, 20)
                    }
                    .padding(.bottom, 80)
                        
                    VStack(spacing: 20) {
                        SectorParagraph(title: detailParagraphDViewModel.titles[3], description: detailParagraphDViewModel.paragraphs[5])
                        
                        HStack {
                            Spacer()
                            
                            Image(detailParagraphDViewModel.images[5])
                                .resizable()
                                .scaledToFit()
                                .frame(width: paragraphD.size.width * 2 / 3)
                            
                            Spacer()
                        }
                        
                        Text(detailParagraphDViewModel.paragraphs[6])
                            .font(.custom("AppleSDGothicNeo-Bold", size: 13))
                            .lineSpacing(15)
                            .multilineTextAlignment(.leading)
                            .padding(32)
                    }
                    .padding(.bottom, 80)
                    
                    Divider()
                        .padding(10)

                    VStack(spacing: 20) {
                        SectorParagraph(title: detailParagraphDViewModel.titles[4], description: detailParagraphDViewModel.paragraphs[7])
                        
                        ReferenceNewsView(newsViewModel: sectorDReferenceNews)
                            .onAppear {
                                sectorDReferenceNews.getData(query: detailParagraphDViewModel.detailParagraphDKeywords[0])
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
