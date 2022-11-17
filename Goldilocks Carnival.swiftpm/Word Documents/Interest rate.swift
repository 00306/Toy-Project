import SwiftUI

struct InterestRate: View {
    @State private var interestrateView: Bool = false
    
    var body: some View {
        ZStack {
            Rectangle().foregroundColor(.toffeeBrown)
        VStack(alignment: .leading) {
                if interestrateView {
                    
                ScrollView(showsIndicators: false) {
                    VStack {
                        Text("INTEREST RATE")
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
                    
                    Text("금리란 돈을 빌려주는 대가로 받는 이자의 비율이다. 흔히 이자율이라고 부르기도 한다. 보통 각 국 중앙은행이 기준금리를 결정한다. 기준금리는 여러 종류의 금리들 중 대표 금리라고 이해하면 된다. 기준금리의 변동에 따라 대출금리, 예금금리 등 다양한 금리들도 같은 방향으로 움직인다.")
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
                        
                        Text("금리는 실물경제 전반에 매우 중요한 역할을 하기 때문에 필수적으로 그 개념과 경제에 미치는 영향을 이해해야한다.금리의 역할을 크게 두 가지로 나누어 설명하면, 첫 번째는 인플레이션과 경제성장을 조절할 수 있는 수단으로 사용된다는 것이다. 보통 인플레이션이 심해지면 금리를 인상하는 것으로 대응한다. 금리를 올리면 대출금리도 올라감을 의미하는데, 이는 대출을 받은 개인, 기업이나, 채권을 발행한 정부들이 달마다 내는 이자를 더 내야한다는 것을 뜻한다. 개인은 신용카드 대금이나, 주택담보대출 등에 지출하는 비용이 커지고, 기업은 신규투자를 위한 자금을 마련하기 부담스러워지고, 정부는 채권 발행으로 인해 발생하는 이자가 늘어나 경제 전반적으로 소비가 위축된다. 결론적으로 금리를 인상함으로써, 사람들의 과도한 대출을 막고, 총 수요를 낮춰 과열된 경기를 잡는 것이다. 반대로 금리를 인하하는 것으로 경기침체를 막기도 한다. 금리를 인상했을 때와는 반대로 위축된 소비심리를 활성화시켜 부족한 수요를 증가시키고 자산시장을 활성화시킨다.두 번째는 투자자산 결정에 중요한 판단기준이 된다. 간단한 예시를 들어 설명하자면, 금리가 오르면 부동산 구매에 대한 기회비용이 상승한다. 집을 살 돈으로 은행에 예금을 했다면 매달 받게될 이자가 늘어나기도 하고, 대부분의 사람들이 부동산 투자를 할 때 대출을 끼고 하기때문에 대출금리가 늘어나 비용이 증가한다. 이로 인해 부동산 수요가 줄어들면서 가격 하락으로 이어진다. 금리 인상기에 부동산은 투자 자산으로는 적합하지 않은 것이다. 물론 현실 경제는 금리 뿐 아니라 다른 대외적인 변수나 지표들이 영향을 끼치기 때문에 금리가 오른다고 반드시 부동산 가격에 하락이 온다고 할 수는 없지만, 다른 변수들을 배제하고 오로지 금리와 부동산 가격의 관계만 따졌을 때는 이렇다. 위에 소개한 부동산 외에도 많은 투자자산들은 자신의 고유한 속성에 따라 금리와 다양한 상관관계를 갖는다. 이 관계를 이해하고 상황에 맞는 투자 계획을 세운다면 수익률이 개선될 수 있을 것이다. 기준금리, 대출금리, 명목금리, 실질금리, 예금금리, 정책금리, 채권금리 등 다양한 종류가 있다.")
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
                    self.interestrateView.toggle()
                }
            }
        }
        
    }
}
