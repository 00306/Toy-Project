import SwiftUI

struct BigStep: View {
    @State private var bigStepView: Bool = false
    
    var body: some View {
        ZStack(alignment: .leading) {
            Rectangle().foregroundColor(.deepDarkBrown)
            
            
            if bigStepView {
                ScrollView(showsIndicators: false) {
                    VStack {
                        Text("BIG STEP")
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
                            
                            Text("우리가 사용하는 스마트폰, 옷, 과자, 자동차같은 각종 제품을 만드는 생산공정에서 사용되는 원료가 되는 자재를 말한다. 즉 석유, 구리, 금, 은을 비롯한 옥수수, 밀, 쌀 등이 원자재이다.")
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
                            
                            Text("원자재는 장기간 보관 가능 여부에 따라 소프트원자재와 하드원자재로 나뉠 수 있다. 소프트원자재는 재배되어 장기간 보관할 시 상품이 변질되는 원자재이고, 코코아, 설탕 등이 있다. 하드원자재는 채굴되고 추출되어 장기간 보관시에도 상품이 쉽게 변질되지 않는 원자재이다. 석유, 천연가스, 각종 귀금속류가 이에 속한다.")
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
                self.bigStepView.toggle()
            }
        }
        
    }
}
