import SwiftUI

struct Inflation: View {
    @State private var inflationView: Bool = false
    
    var body: some View {
        ZStack(alignment: .leading) {
            Rectangle().foregroundColor(.deepDarkBrown)
            
            
            if inflationView {
                ScrollView(showsIndicators: false) {
                    VStack {
                        Text("Inflation")
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
                            
                            Text("물가가 상승하는것을 인플레이션이라고 한다. 물가상승률이라고 부르기도 한다.")
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
                            
                            Text("인플레이션을 일으키는 요인은 셀 수 없을만큼 많지만 그 요인들은 수요 아니면 공급에 영향을 미친다. 무엇이든 가격이 오르기 위해서는 수요가 증가하거나 공급이 감소해야한다. 인플레이션은 경제에 큰 악영향을 끼치는데, 크게 두 가지를 알아보자면, 첫 번째는 빈부 격차의 심화이다. 가격이 비싸진다는 것은 구매하고자하는 실물자산의 가치에 비해 화폐의 가치가 상대적으로 더 낮아졌음을 의미한다. 땅이나 건물 등과 같은 실물의 가치는 물가와 함께 상승하는 경향이 있어, 이런 자산들을 소유한 사람들은 실질 소득이 늘어나고 이런 자산들을 가지고 있지 않은 사람들은 실질 소득이 작아진다. 그래서 부유층은 더욱 부유해지고, 빈곤층은 더욱 가난해진다. 두 번째로는 근로의욕 저하 그리고 투기 성행이다. 사람들은 화폐의 가치가 낮아져 전과 같은 연봉을 받아도 실질 소득이 줄었기 때문에, 생산적인 일을 해 꾸준히 저축해야겠다는 생각보다는 차라리 가격이 오르고 있는 토지나 부동산 등을 매수하여 이득을 보는 비생산적인 투기나 하자는 생각을 하게 된다. 그리고 이는 건전한 경제 성장을 방해한다.")
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
                            
                            Text("원자재")
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
                self.inflationView.toggle()
            }
        }
        
    }
}
