import SwiftUI

struct QuantativeTightening: View {
    @State private var QTView: Bool = false
    
    var body: some View {
        ZStack(alignment: .leading) {
            Rectangle().foregroundColor(.deepDarkBrown)
            
            
            if QTView {
                
                ScrollView(showsIndicators: false) {
                    VStack {
                        Text("Quantative Tightening, QT")
                            .font(Font.custom("HeadlineOneHPLHS", size: 80))
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
                            
                            Text("중앙은행이 양적완화로 시중에 풀었던 돈을 회수하는 것을 의미한다. 양적완화와 반대되는 개념이다. 대차대조표 축소, 대차대조표 정상화라고 말하기도 한다.")
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
                            
                            Text("양적긴축은 주로 이전까지의 양적완화로 인해 인플레이션 압력이 심해질 때 시행하는 정책이다. 양적완화 할 때 중앙은행이 매입했던 채권을 매각하면서 시장으로부터 돈을 회수한다. 시장에 풀렸던 돈이 회수되면서 화폐의 가치가 상승하고, 인플레이션을 잡는다. 하지만 보통 기준금리 인상과 동반되거나, 인상 후 양적긴축을 하기 때문에 급격한 양적긴축은 경기침체의 위험이 존재한다.")
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
                self.QTView.toggle()
            }
        }
        
    }
}
