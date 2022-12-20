import SwiftUI

struct Leverage: View {
    @State private var leverageView: Bool = false
    
    var body: some View {
        ZStack(alignment: .leading) {
            Rectangle().foregroundColor(.deepDarkBrown)
            
            
            if leverageView {
                ScrollView(showsIndicators: false) {
                    VStack {
                        Text("Leverage")
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
                            
                            Text("지렛대의 힘이라는 사전적 의미를 가졌다. 투자할 때 보유하고 있는 자본 외에 부채 등과 같은 타인의 자본을 활용해서 수익률을 극대화하는 것을 말한다.")
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
                            
                            Text("간단한 예시를 들어 설명하면, KODEX 레버리지라는 금융상품이 있다. 이 상품은 KOSPI 200을 추종하고 추적지수배수는 2.0배이다. 이 상품이 코스피 200의 일일변동률의 2배를 추종한다는 것이다. 만약 코스피가 하루만에 5%가 빠지면 KODEX 레버리지는 10%가 빠지고, 반대로 코스피가 10% 오르면 KODEX 레버리지는 20%가 오른다. 이는 투자자금이 2배로 불어난 것과 같은 효과이다. 하지만 자산을 두 배로 투자한만큼 리스크도 크다. 대표적인게 음의 복리효과이다. 이 상품에 투자하는 투자자들은 코스피가 6개월에 걸쳐 20%가 오르면 레버리지 상품은 +40%가 되어있을 것이라고 생각한다. 하지만 레버리지 상품은 조금 다르게 움직인다. 위에서 이 상품은 ‘일일’변동률 추종한다고 했다. 추종지수의 수익률의 2배가 아닌 추종지수의 하루 단위의 수익률의 2배를 추종하는 것이다. 따라서 코스피가 10% 오르고 다음 날 10% 내린다면 레버리지 상품은 자산의 96%만 남는다.(X*1.2*0.8) 이런 현상을 음의 복리효과라고 부른다. 복리 효과와 같이 투자기간이 길어지면 길어질수록 그 효과가 크게 나타나지만 마이너스 효과가 커진다. 이 외에도 손실을 볼 때도 2배로 본다는 것, 추종지수와 괴리율이 있다는 것, 매매차익 세금 등 다양한 리스크가 있어 레버리지 상품들은 고위험군 자산에 속한다. 그러니 레버리지 상품에 투자할 때는 신중하고 유의해야한다.")
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
                self.leverageView.toggle()
            }
        }
        
    }
}
