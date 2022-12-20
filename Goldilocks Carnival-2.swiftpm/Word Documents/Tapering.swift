import SwiftUI

struct Tapering: View {
    @State private var taperingView: Bool = false
    
    var body: some View {
        ZStack(alignment: .leading) {
            Rectangle().foregroundColor(.deepDarkBrown)
            
            
            if taperingView {
                ScrollView(showsIndicators: false) {
                    VStack {
                        Text("Tapering")
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
                            
                            Text("‘점점 가늘어지다’ 라는 사전적 의미로, 양적완화를 점점 줄여나가는 것을 의미한다.")
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
                            
                            Text("양적완화를 영원히 지속할 수는 없다. 시중에 화폐가 계속해서 늘어나게 되면, 화폐의 가치가 계속해서 낮아지게 될 것이고 결국 심각한 인플레이션을 초래하여 사람들의 생활에 엄청난 악영향을 끼칠 것이다. 양적완화의 효과로 위축된 경기를 어느정도 부양하는데 성공했다면 정부는 그 효과로 인한 인플레이션이 올 것을 우려해, 시중에 유통한 돈을 다시 회수하려는 정책을 펼치는데, 그 시작이 바로 테이퍼링이다. 기존에 지속하고 있던 양적완화를 갑작스럽게 중단한다면 시장이 충격을 받을 수 있기 때문에 양적완화의 공급량을 천천히 줄여나가 시장에게 대비할 시간을 주는 것이다.")
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
                            
                            Text("다ㄹ러, ")
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
                self.taperingView.toggle()
            }
        }
        
    }
}
