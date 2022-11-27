//
//  SectorBViewModel.swift
//
//  Created by Ji hyuk Song on 22/10/01.
//

import SwiftUI

struct ParagraphBViewModel: Summary {
    var paragraphB = Paragraph(title: "", 
                               subTitle: "", 
                               summary: "Inflation is all around the world. Inflation reached a new 40 year high. Billionaire investor Ray Dalio says ‘cash is trash but stocks are even worse’. Inflation makes people hard to live. They can’t save up money, because The price of real assets are rised. They can’t cash in gains, because Stocks and Cryptocurrencies are all plunged. Fed hiked its benchmark interest rate by 75 basis points to 1.75 percent on June 16th. and hiked 75 basis point to 2.5 percent on July 28th to stop inflation. They are very hawkish so They broke the Forward Guidance. We should have need to be ready But Inflation is already serious. So From now on, We need to react against Inflation.")
    
    var title: String {
        return self.paragraphB.title
    }
    
    var subTitle: String {
        return self.paragraphB.subTitle
    }
    
    var summary: String {
        return self.paragraphB.summary
    }
}

struct DetailParagraphBViewModel: Writing {
    var detailParagraphB: DetailParagraph = DetailParagraph(headline: "INTEREST RATE", 
                                                            titles: ["막 내린 제로금리 시대", "자이언트 스텝", "포워드 가이던스", "기성세대의 잘못인걸까?"], 
                                                            paragraphs: [
                                                            "2022년 3월, 4개월간의 테이퍼링을 종료하고, 코로나19 이후에 시작된 제로금리 시대가 막을 내렸다. 3월 17일(한국시간) 연준은 0.25% 금리인상을 하면서 장기적 긴축을 예고했다. 최근 미국의 물가상승률은 40년 만에 최고치를 기록하면서 심각한 인플레이션을 나타내고 있어 강력한 통화정책과 재정정책으로 연준의 목표인 물가상승률 연 2%를 달성할 것이라고 매파적인 의지를 드러내기도 했다.",
                        
                                                            "연준은 곧바로 5월 FOMC에서 빅 스텝을 단행했다. 2000년대 닷컴버블 때 이후로 첫 빅 스텝이다. 이번 빅스텝에 그치지 않고, 6월 FOMC에서도 빅스텝을 밟을 것이라는 포워드 가이던스를 제시하기도 했다. 하지만 2022년 6월 16일(한국시간), 연준은 28년만에 빅 스텝을 넘어선 자이언트 스텝이라는 초강수를 뒀다. FOMC의 의도는 확실했다. ‘경기’ 보다는 ‘물가’ 가 우선인 것이다. 이런 초강수에도 불구하고 연준은 물가 상승률이 너무 높아 다음 FOMC에서도 빅 스텝을 고려하고 있다는 포워드 가이던스를 제시했다.",
                        
                                                            "6월 자이언트 스텝으로 인해 Fed의 신뢰성에 대한 문제가 제기되기도 했다. Fed는 5월 FOMC에서 자이언트 스텝은 적극적으로 고려하지 않고 있다는 포워드 가이던스를 제시했지만, 6월 FOMC가 열리기 불과 이틀전에 자이언트 스텝의 가능성을 제기했고, 또 그렇게 단행되었다. 포워드 가이던스를 뒤집은 것이다. 정보에 즉각적으로 대응하지 못한 개인 투자자들은 연준의 포워드 가이던스를 믿고 있다가 손해를 봤다. 이와 관련하여 6월 FOMC 당시 파월 의장의 인터뷰 내용을 참고해 설명하자면, 포워드 가이던스는 경제 상황이 발언 당시에 예측하는 상황과 일치하는 상황으로 진행된다는 걸 전제로 한 가정이지, 절대적인 것이 아니다. 연준은 다양한 경제지표들을 보고 금리를 결정하는데, CPI 발표날이 우연히 FOMC 금리 발표 이틀전이어서 지표를 판단에 반영하고 금리를 정하는 과정 자체가 늦어진 것이다. 물론 기존의 포워드 가이던스를 따라 빅 스텝을 밟는 것이 결코 가볍게 대처하는 것도 아니지만, 일정이 겹쳐있을 땐 주의를 기울여야한다."], 
                                                           images: ["Fed dot plot"], 
                                                           imageDescriptions: ["연준의 금리 점도표"])
                                
    var detailParagraphBKeywords = ["제로금리 양적완화 자이언트 스텝"]
    
    var headline: String {
        return self.detailParagraphB.headline
    }
    
    var titles: [String] {
        return self.detailParagraphB.titles
    }
    
    var paragraphs: [String] {
        return self.detailParagraphB.paragraphs
    }
    
    var images: [String] {
        return self.detailParagraphB.images
    }
    
    var imageDescriptions: [String] {
        return self.detailParagraphB.imageDescriptions
    }
}

