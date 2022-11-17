import SwiftUI

struct Bond: View {
    @State private var bondView: Bool = false
    
    var body: some View {
        ZStack(alignment: .leading) {
            Rectangle().foregroundColor(.deepDarkBrown)
            
            
            if bondView {
                ScrollView(showsIndicators: false) {
                    VStack {
                        Text("BOND")
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
                            
                            Text("정부, 금융기관, 주식회사 등이 투자자에게 돈을 빌리기 위해 발행한 증서이다. 채권 발행자격을 갖춘 기관은 법으로 정해져있다.")
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
                            
                            Text("돈이 필요할 때 사람들은 은행에 가기도 하고, 주변 지인들에게 빌리기도 한다. 기업이나 정부들도 마찬가지이다. 은행에서 대출을 하기도하고 여기저기서 돈을 빌리기도 한다. 이 때 돈을 빌리면서 얼마를 빌렸고, 얼마의 이자를 줄 것이며, 언제 갚을 것이라고 써놓은 법적효력이 있는 차용증을 증거로 투자자에게 준다. 이 차용증을 채권이라고 한다. 채권에는 다양한 분류방식이 있는만큼 다양한 채권이 존재한다. 발행기관, 만기일, 이자지급방식에 따라 분류할 수 있는데, 채권을 발행한 기관이 국가면 국채, 주식회사면 회사채, 은행같은 금융기관이면 금융채라고 한다. 또 채권에는 언제까지 이자를 포함한 원금을 갚겠다는 만기일이 적혀있는데 이 만기일이 1년 미만이면 단기 채권, 1년~5년 미만이면 중기 채권, 5년 이상이면 장기 채권으로 분류한다. 마지막으로 이자를 지급하는 방식에 따라 이표채와 할인채로 나뉘는데, 이표채는 정해진 기간마다(보통 3개월 및 6개월) 이자를 주는 채권을 말하고, 할인채는 만기일까지의 이자를 단리로 미리 할인하여 구매할 수 있는 채권이다.")
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
                self.bondView.toggle()
            }
        }
        
    }
}
