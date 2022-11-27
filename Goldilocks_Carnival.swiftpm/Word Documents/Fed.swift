import SwiftUI

struct Fed: View {
    @State private var fedView: Bool = false
    
    var body: some View {
        ZStack(alignment: .leading) {
            Rectangle().foregroundColor(.deepDarkBrown)
            
            
            if fedView {
                ScrollView(showsIndicators: false) {
                    VStack {
                        Text("FED")
                            .font(Font.custom("HeadlineOneHPLHS", size: 130))
                            .foregroundColor(.black)
                            .ignoresSafeArea()
                            .padding(150)
                    }
                    VStack(alignment: .leading) {
                        
                        VStack(alignment: .leading) {
                            Text("DEFINITION")
                                .font(Font.custom("HeadlineOneHPLHS", size: 30))
                                .foregroundColor(.black)
                                .ignoresSafeArea()
                                .padding()
                            
                            Text("미국의 중앙은행 역할을 하는 기관으로, Federal Reserve System(Fed), 연준 등으로 불린다. 각 중앙은행이 한국은 한국은행, 영국은 영란은행, 일본은 일본은행이라면 미국은 Fed라고 생각하면 된다.")
                                .font(.custom("AppleSDGothicNeo-Medium", size: 13))
                                .foregroundColor(.black)
                                .lineSpacing(15)
                                .multilineTextAlignment(.leading)
                                .padding()
                        }.padding()
                        
                        VStack(alignment: .leading) {
                            Text("COMPONENTS")
                                .font(Font.custom("HeadlineOneHPLHS", size: 30))
                                .foregroundColor(.black)
                                .ignoresSafeArea()
                                .padding()
                            
                            Text("-연방준비제도이사회(Federal Reserve Board of Governors , FRB)\n-연방공개시장위원회(Federal Open Market Committee, FOMC)\n-연방준비은행(Federal Reserve Banks)")
                                .font(.custom("AppleSDGothicNeo-Medium", size: 13))
                                .foregroundColor(.black)
                                .lineSpacing(15)
                                .multilineTextAlignment(.leading)
                                .padding()
                        }.padding()
                        
                        
                        VStack(alignment: .leading) {
                            Text("DESCRIPTION")
                                .font(Font.custom("HeadlineOneHPLHS", size: 30))
                                .foregroundColor(.black)
                                .ignoresSafeArea()
                                .padding()
                            
                            Text("연방준비제도(이하 Fed)는 미국의 중앙은행제도로 통화 정책 결정, 금융기관 감독 등 중요한 역할을 맡고 있다. 구성을 살펴보면, 연방준비제도이사회(이하 FRB)는 Fed의 중추적 기관으로, 1명의 의장과 7인의 이사로 구성된다. 공개시장조작, 금리규제, 예금준비율 변경, 12개의 연방준비은행 총괄 등 미국 경제에 핵심적인 역할을 한다. 연방공개시장위원회(이하 FOMC)는 경제정책을 수립하고 집행하는 기구로, FRB 이사 7명과 연방준비은행 총재 5명으로 구성된다. 연 8회의 회의를 개최하고, 기준금리를 결정한다. 연방준비은행은 미국 전체를 12개의 연방구로 나누어 그 12곳 중 가장 중요한 도시에 설치한 연준은행이다. 각자 관할하는 지역의 경제동향을 조사해 발표한다.")
                                .font(.custom("AppleSDGothicNeo-Medium", size: 13))
                                .foregroundColor(.black)
                                .lineSpacing(15)
                                .multilineTextAlignment(.leading)
                                .padding()
                        }.padding()
                        
                    }
                }
                
            }
        }.onAppear {
            withAnimation(.easeInOut(duration: 1.2)) {
                self.fedView.toggle()
            }
        }
        
    }
}
