import SwiftUI

struct CPI: View {
    @State private var cpiView: Bool = false
    
    var body: some View {
        ZStack(alignment: .leading) {
            Rectangle().foregroundColor(.deepDarkBrown)
            
            
            if cpiView {
                ScrollView(showsIndicators: false) {
                    VStack {
                        Text("CONSUMER PRICE INDEX, CPI")
                            .font(Font.custom("HeadlineOneHPLHS", size: 70))
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
                            
                            Text("소비자물가지수(Consumer Price Index, CPI)는 일정 기간동안 도시 내 소비자가 상품 및 서비스에 지불한 가격을 월별로 정리한 경제지표이다. 인플레이션과 디플레이션을 측정하는 대표적인 지표 중 하나이다.")
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
                            
                            Text("CPI는 기준시점의 물가수준을 100으로 뒀을 때, 각 도시별 가중치와 품목별 가중치를 적용해 조사시점의 물가수준을 상대적인 크기로 표시한다. 예를 들어, 현재 물가지수가 150이라면 기준시점에 비해 물가수준이 50% 상승한 것을 의미한다. 이렇게 산출된 지수는 많은 국가들이 인플레이션과 디플레이션을 측정하는데 대표적인 헤드라인 지표로 쓰이고, Fed가 통화 정책을 조정하는 방향에 영향을 준다. 이 외에도 급여협상을 할 때 참조한다거나, 생활 보조금을 조정할 때 참조하는 등 우리 사회의 다양한 곳에 활용된다. CPI가 오르면 인플레이션이 심해진다는 의미이고, 내리면 인플레이션이 둔화 혹은 디플레이션이 온다고 해석할 수 있다.")
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
                self.cpiView.toggle()
            }
        }
        
    }
}
