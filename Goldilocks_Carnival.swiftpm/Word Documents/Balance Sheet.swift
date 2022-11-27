import SwiftUI

struct BalanceSheet: View {
    @State private var balancesheetView: Bool = false
    
    var body: some View {
        ZStack(alignment: .leading) {
            Rectangle().foregroundColor(.deepDarkBrown)
            
            if balancesheetView {
                ScrollView(showsIndicators: false) {
                    VStack {
                        Text("Balance Sheet")
                            .font(Font.custom("HeadlineOneHPLHS", size: 100))
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
                            
                            Text("대차대조표는 재무제표의 구성요소 중 하나로, 회사나 어떤 조직의 어느 시점에서의 가치를 반영하고 있는 회계보고서이다. 재무상태표라고도 한다.") 
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
                            
                            Text("- 자산: 유동자산ㆍ비유동자산\n- 부채: 유동부채ㆍ비유동부채\n- 자본: 자본금ㆍ자본잉여금ㆍ이익잉여금ㆍ자본조정")
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
                            
                            Text("대차대조표는 ‘자산 = 부채 + 자본’ 이라는 회계의 기본 형식을 갖추고 있으며, 기업의 자산, 부채, 자본, 자본의 구체적인 운용여부 등의 정보를 제공한다. 이를 정보이용자들에게 제공하여 기업의 가치를 평가하는 것에 도움을 준다. 상법에서는 기업에게 대차대조표를 의무적으로 작성하게 하고있다.")
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
                self.balancesheetView.toggle()
            }
        }
        
    }
}
