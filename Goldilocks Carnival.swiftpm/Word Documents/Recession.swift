import SwiftUI

struct Recession: View {
    @State private var recessionView: Bool = false
    
    var body: some View {
        ZStack(alignment: .leading) {
            Rectangle().foregroundColor(.deepDarkBrown)
            
            
            if recessionView {
                ScrollView(showsIndicators: false) {
                    VStack {
                        Text("RECESSION")
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
                            
                            Text("경제 주체들의 경제활동 위축으로 인해 경기가 하락하는 상태를 말한다. 미국의 경우엔 전미경제연구소(NBER)이라는 기관에서 경기침체를 공식적으로 선언한다. 일반적으로 GDP가 2분기동안 마이너스 성장이면 경기침체로 정의한다.")
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
                            
                            Text("경기침체의 발생원인은 다양하지만, 역사적으로 경제 버블이 무너질 때, 대규모 자연 재해나 펜데믹을 야기할만한 심각한 질병 그리고 급격한 경제적인 위기 등 소비 위축을 야기하는 사건들이 있을 때마다 발생했다. 이런 상황이 발생해 경기침체가 오면 기업, 가계 모두 어려움을 겪는다. 기업의 경우는 소비자들의 소비심리가 위축되어 수요 부족으로 인해 매출이 줄고, 실적이 줄어 주가가 폭락하여 손실을 줄이기 위해 대규모 구조조정이 이뤄지게 된다. 가계의 경우는 이런 고용불안으로 인해 실업률이 증가하고, 자산가치의 하락으로 투자에 실패하여 소득이 감소하게 된다.")
                                .font(.custom("AppleSDGothicNeo-Medium", size: 13))
                                .foregroundColor(.black)
                                .lineSpacing(15)
                                .multilineTextAlignment(.leading)
                                .padding()
                        }.padding()
                        
                        VStack(alignment: .leading) {
                            Text("Favorable Assets(Theoretically)")
                                .font(Font.custom("HeadlineOneHPLHS", size: 30))
                                .foregroundColor(.black)
                                .ignoresSafeArea()
                                .padding()
                            
                            Text("부동산")
                                .font(.custom("AppleSDGothicNeo-Medium", size: 13))
                                .foregroundColor(.black)
                                .lineSpacing(15)
                                .multilineTextAlignment(.leading)
                                .padding()
                        }.padding()
                        
                        VStack(alignment: .leading) {
                            Text("HISTORY")
                                .font(Font.custom("HeadlineOneHPLHS", size: 30))
                                .foregroundColor(.black)
                                .ignoresSafeArea()
                                .padding()
                            
                            Text("머지")
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
                self.recessionView.toggle()
            }
        }
        
    }
}
