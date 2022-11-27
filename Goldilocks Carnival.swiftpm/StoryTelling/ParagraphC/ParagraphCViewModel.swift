//
//  SectorCViewModel.swift
//
//  Created by Ji hyuk Song on 22/10/01.
//

import SwiftUI

struct ParagraphCViewModel: Summary {
    var paragraphC = Paragraph(title: "T", 
                               subTitle: "", 
                               summary: "hereby, Investors have been changing their portfolio in any way and There are many people that losing their money. According to Stock yields transcription 2021 by age, Especially, Investors who in their 20s underperformed in both domestic and overseas because of frequent sales. Then, How to prepare when interest rates rise ? Interest rate fluctuations can have both positive and negative effects on markets. Typically, Dollar, gold, high dividend stocks etc.. get positive effects whereas bonds, tech stocks, energy stocks, commodities etc.. get negative effects. We should stay away from the latter for now. But it doesn't mean buying former things is best choice. Financial instruments and commodity are influenced many other variable such as unemployment rate, inflation rate, sudden pandemic and war. Not only interest rates. So analyst refer to many credible indicators for more accurate analysis. To prepare appropriately, Retail investors often follow credible analyst's portfolio or they analysis as they think is right. But Nowadays, investment craze, Gambler who buy anything that has pretty name and say 'Gazuaaaa' has urgently been soaring. People that are belonging this type must know they are making a high-risk investment and it will be more likely to investment failure. They need to remind purpose of investing.")
    
    var title: String {
        return self.paragraphC.title
    }
    
    var subTitle: String {
        return self.paragraphC.subTitle
    }
    
    var summary: String {
        return self.paragraphC.summary
    }
}

struct DetailParagraphCViewModel: Writing {
    var detailParagraphC: DetailParagraph = DetailParagraph(headline: "TURNOVER", 
                                                            titles: ["하락장", "회전율-수익률 상관관계", "돈의 심리학", "자본주의 사회에서 돈의 가치"], 
                                                            paragraphs: [
                                                            "2021년 11월 연준의 테이퍼링 주식시장, 암호화폐 시장이 하락장 국면으로 접어들었다. 2022년 상반기에만 코스피 변동률이 -20%, 나스닥 변동률이 -34%, 비트코인 변동률이 -60%를 기록하면서 수많은 개인투자자들, 특히 코로나 19 이후 투자를 시작해 하락장을 처음 겪는 초보 투자자들이 손실을 피할 수 없었을 것이다. 하지만 더 안타까운건 상승장에서도 유의미한 수익률을 기록하지 못하는 투자자들도 있다는 것이다.",
                        
                                                            "2020년은 상승장이었음에도 통계상으로 초보 투자자들 중 수익이 아닌 손해를 본 집단도 있다. 어째서 엄청난 상승장에서 마이너스 수익률을 기록하게 된 걸까? 여러 매체에서 그들의 투자방식을 분석했다.",
                        
                                                            "위는 NH투자증권의 2020년 신규계좌 기준 연령별 주식 투자 수익률 통계이다. 주목할만한 부분은 20대 남성의 수익률이 -2.2%로 전 연령 최하위를 기록했고, 거래 회전율은 838%로 전 연령 중 가장 높은 수치를 보인다는 것이다. 또 전 연령층에서 보이는 특징으로는 동 연령층 여성이 남성보다 수익률은 높고 거래 회전율은 낮다는 것이다. 통계를 보면 수익률과 거래 회전율에 어떠한 상관관계가 있음은 분명해보인다. 아래는 한화투자증권에서 이에 대해 표본 조사하여 낸 통계이다.",
                                                            
                                                            "한화투자증권에서 내놓은 ‘회전율-수익률 상관관계 분석’ 보고서에 의하면 거래회전율이 제일 높은 그룹이 최저 수익률을 기록했고, 평균 거래 회전율이 360% 이상이 되면 회전율-수익률간 반비례 관계가 두드러졌다. 수익률 악화의 주요 원인은 거래비용(수수료, 세금) 상승이었다. 그렇다면 거래 회전율을 무조건 낮추는게 수익률에 도움이 될까라는 의문을 가질 수 있다. 평균 회전율이 39%~223%인 적당한 거래회전율의 그룹의 수익률이 평균 수익률 20% 이하인 저회전 그룹의 수익률보다 높게 나타났다. 손실 난 종목을 그저 방치하거나 장기 투자를 위해 묻어두는 투자방법보다 시장의 변화에 적절히 대응하는 것이 효과적임을 시사한다.\n이 외에도 남성들의 마이너스 수익률에 기여한 종목으로는 ’코덱스200 선물인버스2X’, 일명 ‘곱버스’가 있다. 비정상적으로 상승하는 주가를 보고 주가 하락에 배팅한 것이다.",
                        
                                                            "행동경제학에서 개인투자자들의 수익률이 저조한 이유를 ‘과잉확신’ 으로 설명하기도 한다. 이는 자신이 투자한 종목에 대해 지나치게 낙관적으로 판단하는 것으로, 이런 성향은 투자자들에게 비합리적인 결정을 유발해 수익률을 낮춘다. 여기에 ‘자기 귀인편향’ 이라고 하는 자신의 성공은 나의 개인적인 능력 덕분이고, 실패는 나의 통제밖에 있는 외부요인 탓이라고 생각하는 성향이 겹치게 되면 거래 회전율 증가, 정보에 대한 확대해석, 변동성의 증가 등의 수익률을 저조하게 만드는 역사적인 행동들이 관찰된다.",
                        
                                                            "경제적 돌파구로 주식, 암호화폐를 선택하고 투자에 뛰어들었는데 오히려 손해만 보고 상처를 입은 투자자들이 많다. 이들에게 해주고 싶은 말은 경제를 공부하지 않았다면 얼른 시작하고, 공부하고 있었다면 계속해서 꾸준히 하라는 것이다. 투자로 돈을 버는 사람들을 보면 앉아서 노동없이 돈을 버는 것 같아 보이지만, 돈을 잃지않기 위해서 투자로 얻는 돈 그 이상만큼 시간을 할애해서 공부한다. 돈에 미쳐서가 아니다. 자본주의 사회에서 돈이 가지는 가치를 알기 때문이다. 자본주의 사회에서 돈이 많다는 건 나의 시간을 자유롭게 쓸 수 있음을 의미한다. 내가 수익없이 6개월을 생활할 수 있을만한 여유자금이 있다면, 볼 때마다 신경질나는 상사나 동료가 있는 회사에서 퇴사할 수 있다. 6개월동안 쉬면서 다른 직장을 구할 수 있기 때문이다. 큰 정원을 가지고도 정원을 가꾸는데 시간을 할애하지 않고 다른 일을 할 수 있다. 정원사를 고용하면 되기 때문이다. 집안 일을 할 시간에 다른 취미활동을 할 수 있다. 가정부를 고용할 수 있기 때문이다. 하지만 세대가 지날수록 경제 과목은 기피되고 있다. 경제뉴스는 봐도 무슨 말인지 모르겠고, 유튜브에서는 부두술같은걸 돈을 버는 공식인 것 마냥 소개하고 있다. 책을 읽기엔 내용 이해도 힘들고, 어릴 때부터 TV, 컴퓨터, 스마트폰 등을 사용하면서 자랐기 때문에 책에 적힌 작고 빽빽한 글자만을 보면서 정보를 습득하는 것을 선호하지 않기도 한다. 거기다가 현 세대는 어릴 때부터 경제에 관한 교육과정이 부족한 세대여서 경제공부에 거부감을 느끼기도 한다. 고등학교 사회탐구 선택과목에 경제가 있지만, 응시자수는 점점 줄어 이젠 전체 수능 응시자수에 2% 남짓만을 차지하며 교육과정에서 빠질 위기에 처해있다. 거창하게 경제를 공부해야한다고 말하지만, 두꺼운 전공서적을 보면서 어려운 단어나 정의들을 달달 외우고 복잡한 그래프를 그려보면서 미래를 예측하는 방법을 연구해보자는 것이 아니다. 현재 경제상황을 이해할 수 있고, 내가 투자하고자 하는 기업을 분석할 수 있으며, 나의 투자방향이나 규칙을 스스로 진단할 수 있는 힘을 기르자는 것이다."], 
                                                           images: ["Kospi graph", "Nasdaq graph", "Bitcoin graph", "NHinvestigation", "Turnover-Profit rate", "NHinvestigation2", "Overconfidence"], 
                                                           imageDescriptions: ["코스피 그래프", "나스닥 그래프", "비트코인 그래프", "2020년 신규계좌 기준 연령별 성별별 주식 투자 수익률 통계"])
    
    var detailParagraphCKeywords = ["하락장 20대 남성"]
    
    var headline: String {
        return self.detailParagraphC.headline
    }
    
    var titles: [String] {
        return self.detailParagraphC.titles
    }
    
    var paragraphs: [String] {
        return self.detailParagraphC.paragraphs
    }
    
    var images: [String] {
        return self.detailParagraphC.images
    }
    
    var imageDescriptions: [String] {
        return self.detailParagraphC.imageDescriptions
    }
}

