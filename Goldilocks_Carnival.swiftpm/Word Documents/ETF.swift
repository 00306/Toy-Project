import SwiftUI

struct ETF: View {
    @State private var etfView: Bool = false
    
    var body: some View {
        ZStack(alignment: .leading) {
            Rectangle().foregroundColor(.deepDarkBrown)
            
            
            if etfView {
                ScrollView(showsIndicators: false) {
                    VStack {
                        Text("Exchange Trade Fund, ETF")
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
                            
                            Text("ETF는 주식, 원자재, 채권 등 여러 자산을 모아 쉽게 투자할 수 있도록 만든 상품이다. 펀드임에도 주식시장에 상장되어 주식처럼 거래할 수 있는 펀드이다. 상장지수펀드라고도 한다.")
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
                            
                            Text("ETF는 추종하는 지수의 구성종목들로 구성되어있다. 간단한 예를 들어 설명하면, 한국 증권시장에는 KOSPI 200을 추종하는 KODEX 200라는 ETF가 있다. 이 ETF를 매수하면 KOSPI 200 지수의 구성요소, 즉 코스피에 상장된 200개의 기업에 분산투자하는 효과가 난다. 많은 기업에 다 분산투자하려면 적어도 각 주식마다 1주씩은 살 수 있어야 하는 돈이 있어야 하는데 ETF를 매수하면 적은 돈으로도 가능하다. 또 주식처럼 주식시장에 상장되어있어 기존의 증권계좌로 장이 열릴 때 실시간으로 매수 매도 할 수 있어 편리하다. 일반적인 펀드는 포트폴리오를 운영보수하는 비용으로 거래할 때와 수익을 실현할 때 수수료가 붙는다. 하지만 ETF는 대체적으로 운용보수가 적은 편이라 비용면에서도 일반적인 펀드에 비해 유리하다. 유일한 단점이라면 아무래도 수익률이다. 특정지수를 추종하는 특성 때문에 그 지수의 수익률을 초과하여 수익을 내기 힘들고 분산투자하여 리스크를 줄인만큼 단기간에 드라마틱한 수익률을 기대하기는 힘들다.")
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
                self.etfView.toggle()
            }
        }
        
    }
}
