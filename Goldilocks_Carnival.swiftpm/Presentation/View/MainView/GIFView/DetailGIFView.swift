import SwiftUI

struct DetailGIFView: View {
    @Binding var gifSheet: Bool
    @StateObject var GIFReferenceNews = NewsViewModel()
    var GIFViewModel = GIFViewModel()
    
    var body: some View {
        GeometryReader { gif in
            Rectangle()
                .foregroundColor(.lightBrown)
                .edgesIgnoringSafeArea(.all)
            
            ScrollView(showsIndicators: false) {
                VStack(alignment: .leading, spacing: 40) {
                    Text(imageSectorViewModel.headline)
                        .font(Font.custom("HeadlineOneHPLHS", size: 150))
                        .foregroundColor(.black)
                        .ignoresSafeArea()
                        .frame(width: gif.size.width, height: gif.size.height / 3)
                        .padding(.trailing)
                    
                    HStack(alignment: .top, spacing: 10) {
                        Image(imageSectorViewModel.images[0])
                            .resizable()
                            .scaledToFit()
                            .frame(width: gif.size.width / 3)
                            .padding(.leading)
                        
                        VStack(alignment: .leading, spacing: 10) {
                            VStack(alignment: .leading, spacing: 13) {
                                Text("제 16대 연방준비제도 의장")
                                    .font(.custom("AppleSDGothicNeo-Bold", size: 15))
                                    .lineSpacing(15)
                                    .multilineTextAlignment(.leading)
                                    .padding(.horizontal)
                                
                                Text("제롬 파월(Jerome Hayden Powell)")
                                    .font(.custom("AppleSDGothicNeo-Bold", size: 20))
                                    .lineSpacing(15)
                                    .multilineTextAlignment(.leading)
                                    .padding(.horizontal)
                            }
                            .padding(.bottom, 40)
                            
                            VStack(alignment: .leading, spacing: 13) {
                                Text("재임기간")
                                    .font(.custom("AppleSDGothicNeo-Bold", size: 20))
                                    .lineSpacing(15)
                                    .multilineTextAlignment(.leading)
                                    .padding(.horizontal)
                                
                                Text("2018 2월 5일 ~ 현재")
                                    .font(.custom("AppleSDGothicNeo-Bold", size: 14))
                                    .lineSpacing(15)
                                    .multilineTextAlignment(.leading)
                                    .padding(.horizontal)
                                
                            }
                            .padding(.bottom, 30)
                            
                            VStack(alignment: .leading, spacing: 13) {
                                Text("정당")
                                    .font(.custom("AppleSDGothicNeo-Bold", size: 20))
                                    .lineSpacing(15)
                                    .multilineTextAlignment(.leading)
                                    .padding(.horizontal)
                                
                                Text("공화당")
                                    .font(.custom("AppleSDGothicNeo-Bold", size: 14))
                                    .lineSpacing(15)
                                    .multilineTextAlignment(.leading)
                                    .padding(.horizontal)
                            }
                            .padding(.bottom, 30)
                            
                            VStack(alignment: .leading, spacing: 13) {
                                Text("정책성향")
                                    .font(.custom("AppleSDGothicNeo-Bold", size: 20))
                                    .lineSpacing(15)
                                    .multilineTextAlignment(.leading)
                                    .padding(.horizontal)
                                
                                Text("🦉Owl")
                                    .font(.custom("AppleSDGothicNeo-Bold", size: 14))
                                    .lineSpacing(15)
                                    .multilineTextAlignment(.leading)
                                    .padding(.horizontal)
                            }
                            
                        }
                        .padding(.horizontal)
                        
                        Spacer()
                    }
                    
                    HStack(alignment: .top) {
                        VStack(alignment: .leading, spacing: 30) {
                            Text("FOMC History")
                                .font(Font.custom("HeadlineOneHPLHS", size: 30))
                                .foregroundColor(.black)
                            
                            HStack(alignment: .top, spacing: 100) {
                                Text("2018\nMarch FOMC 0.25%p\nJune FOMC 0.25%p\nSeptember FOMC 0.25%p\nDecember FOMC 0.25%p")
                                    .font(Font.custom("HeadlineOneHPLHS", size: 20))
                                    .foregroundColor(.black)
                                
                                Text("2019\nJuly FOMC 0.25%p down\nSeptember FOMC 0.25%p down\nOctober FOMC 0.25%p down")
                                    .font(Font.custom("HeadlineOneHPLHS", size: 20))
                                    .foregroundColor(.black)
                            }
                            
                            HStack(alignment: .top, spacing: 100) {
                                Text("2020\nMarch FOMC 0.5%p down\nMarch 1%p down\nApril FOMC 0.25%p down")
                                    .font(Font.custom("HeadlineOneHPLHS", size: 20))
                                    .foregroundColor(.black)
                                
                                Text("2022\nMarch FOMC 0.25%p\nMay FOMC 0.5%p\nJune FOMC 0.75%p\nJuly FOMC 0.75%p\nSeptember FOMC 0.75%p")
                                    .font(Font.custom("HeadlineOneHPLHS", size: 20))
                                    .foregroundColor(.black)
                            }
                        }
                        .padding(.bottom, 40)
                        
                        Spacer()
                    }
                    .padding()
                }
            }
        }
    }
}
