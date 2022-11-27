import SwiftUI

struct ForwardGuidance: View {
    @State private var forwardGuidanceView: Bool = false
    
    var body: some View {
        ZStack(alignment: .leading) {
            Rectangle().foregroundColor(.deepDarkBrown)
            
            
            if forwardGuidanceView {
                ScrollView(showsIndicators: false) {
                    VStack {
                        Text("FORWARD GUIDANCE")
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
                            
                            Text("중앙은행이 앞으로 시행할 통화 정책의 방향을 미리 알리는 것이다.")
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
                            
                            Text("중앙은행의 포워드 가이던스는 시장에서 정말 중요한 역할을 한다. 통화 정책의 방향을 공지했기에 시장 참여자들이 그에 대한 대비를 할 수 있고, 그만큼 시장에도 충격이 덜하다. 포워드 가이던스에는 두 가지 방식이 있는데, 첫 번째 방식은 델포이 방식이다. 델포이 방식의 포워드 가이던스는 구체적으로 언제, 어떤 방식으로 정책을 시행할지 정하지 않고, 공표한 정책을 시행할 것이다라는 약속만 한다. 두 번째 방식은 오디세우스 방식이다. 오디세우스 방식의 포워드 가이던스는 델포이 방식과 달리 구체적인 정책을 명확히 발표한다. 미래에 어떤 사건이 발생하더라도 현재의 상황을 개선하는 것이 최우선이라 생각될 때 오디세우스 방식을 선택한다.")
                                .font(.custom("AppleSDGothicNeo-Medium", size: 13))
                                .foregroundColor(.black)
                                .lineSpacing(15)
                                .multilineTextAlignment(.leading)
                                .padding()
                        }
                        .padding()
                    }
                }
                
            }
        }
        .onAppear {
            withAnimation(.easeInOut(duration: 1.2)) {
                self.forwardGuidanceView.toggle()
            }
        }
        
    }
}
