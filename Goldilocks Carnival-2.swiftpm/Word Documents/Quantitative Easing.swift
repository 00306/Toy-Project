import SwiftUI

struct QuantativeEasing: View {
    @State private var QEView: Bool = false
    
    var body: some View {
        ZStack(alignment: .leading) {
            Rectangle().foregroundColor(.deepDarkBrown)
            
                
                if QEView {
                    VStack {
                        Text("Quantative Easing, QE")
                            .font(Font.custom("HeadlineOneHPLHS", size: 80))
                            .foregroundColor(.black)
                            .ignoresSafeArea()
                            .padding(150)
                    }
                    ScrollView(showsIndicators: false) {
                        VStack(alignment: .leading) {
                        
                        
                        VStack(alignment: .leading) {
                            Text("DEFINITION")
                                .font(Font.custom("HeadlineOneHPLHS", size: 30))
                                .foregroundColor(.black)
                                .ignoresSafeArea()
                                .padding()
                            
                            Text("중앙은행이 화폐를 찍어내 시중에 화폐 유통량을 늘리는 것을 의미한다.")
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
                            
                            Text("양적완화는 초저금리 상태에서 침체 국면에 빠진 경기를 부양하기 위해 시행하는 정책이다. 금리를 제로에 근접한 수준까지 인하했지만 의도한대로 소비와 투자가 늘어나지 않을 때, 중앙은행이 돈을 직접 찍어 경제에 유동성을 공급한다. 찍은 돈으로 국채를 매입해서 시중에 돈을 푸는데, 그 과정을 살펴보자면, 정부가 발행한 국채를 기업이나 개인이 사게되면 시중에는 채권이 풀리게 되고 시중에 있던 현금은 정부에게 들어가게 된다. 그럼 채권의 만기일까지 시중에서 현금이 사라지게 되는 것이다. 하지만 중앙은행이 찍어낸 화폐로 시중에 풀린 채권들을 매수하게 되면 시중에는 중앙은행이 찍어낸 새로운 화폐가 유통되고 기존에 시중에 존재하던 채권들은 중앙은행이 가지게 되는 것이다. 이런 일련의 과정을 통해 대출의 형태이든 투자의 형태이든 시장에 돈이 풀리는 것이다. ")
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
                self.QEView.toggle()
            }
        }
        
    }
}
