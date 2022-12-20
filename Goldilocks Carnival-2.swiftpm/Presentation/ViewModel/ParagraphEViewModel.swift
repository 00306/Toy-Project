//
//  ParagraphEViewModel.swift
//
//  Created by Ji hyuk Song on 22/10/01.
//

struct ParagraphEViewModel: Summary {
    var paragraphE = Paragraph(title: "Berkshire Hathaway Buys More Occidental Stock", 
                               subTitle: "", 
                               summary: "Warren Buffett called Oracle of Omaha, has been consistently increasing stake of Occidental Petroleum(OXY) since March. He also didn't stop buying it after 75 basis point hike. Typically, International oil prices under pressure when interest rate rise. Although There are variables that complicate situation-Sanctions on Russian oil- and Inflation that Fed can't control it, Many investors are puzzled with his judgment in the current situation that has risk of overtightening. However, Of coursely, he might be wrong, Retail investors also need to recognize the risk that standing opposite side against god of value investing. While remembering his company's asset, Let's explore his basis of judgment and try to find economical information that you missed.")
    
    var title: String {
        return self.paragraphE.title
    }
    
    var subTitle: String {
        return self.paragraphE.subTitle
    }
    
    var summary: String {
        return self.paragraphE.summary
    }
}

struct DetailParagraphEViewModel: Writing {
    var detailParagraphE: DetailParagraph = DetailParagraph(headline: "ORACLE OF OMAHA", 
                                                   titles: ["복귀전", "가치 투자의 귀재", "꼬리가 몸통을 흔든다"], 
                                                   paragraphs: [
                                                    "워런 버핏이 이끄는 버크셔 해서웨이가 올해 3월부터 옥시덴탈 페트롤리움(OXY)을 꾸준히 매수하고 있다. 2021년 말까지 버크셔는 현금만 1470억 달러(약 186조원)를 들고 ‘마땅히 투자할 곳이 없다’ 고 한탄하며 주식시장에 부정적인 평가를 내렸었는데, 올해 1분기부터 다시 투자에 나서며 셰브론, HP에 이어 옥시덴탈까지 매수하면서 에너지주와 기술주에 비중을 실었다.",
                
                                                    "10년 이상 보유하지 않으려면 단 10분도 보유하지 않는 워런 버핏이기에 이런 선택이 존중된다. 인플레이션도 심각해지고, 러시아 우크라이나 전쟁으로 인한 제재로 러시아산 원유 공급망이 차단된 이후, 유가 상승으로 인해 여러 석유관련 기업들이 수혜를 보고 있긴 하지만, 연준의 강력한 통화정책과 그로 인한 경기침체의 우려, 바이든 정부의 공격적인 기후변화 정책 등, 변동성이 큰 에너지주나 기술주에 투자하기에는 시기적절해보이진 않는다.",
                
                                                    "하지만 워런 버핏은 가치투자자답게 기업가치를 보고 중ㆍ장기적인 투자를 하는 것으로 평가된다. 기존의 화석연료를 기반으로한 시스템을 신재생 에너지로 대체하기 까지에는 큰 비용과 시간이 걸릴 것으로 예상하여, 석유산업의 가치를 재확인하고, 그 뿐 아니라 세계적으로 ‘넷제로’(탄소중립)에 대한 필요성이 대두되는 요즘 시대에 부합하는 옥시덴탈의 직접공기포집(DAC)사업의 가치를 높게 평가하는 것으로 보인다. 직접공기포집이란 대기 중 탄소를 포집해 지하에 수백만 년 동안 격리시키는 기술을 말한다.",
                
                                                    "세상에 일어나는 많은 일들이 엄청난 영향력을 가진 어떤 한 사건에 좌우된다. 이를 꼬리사건이라고 한다. 워런 버핏은 한 세기를 대표하는 투자자로 칭송받지만 그라고 해서 모든 투자에 성공하지 않았다. 워런 버핏은 평생 400~500곳의 주식을 보유했지만, 번 돈의 대부분을 벌어준 것은 그 중 10곳에 불과하다고 말했다. 그리고 그의 회사인 버크셔 해서웨이는 몇몇 사례를 제외하면 나머지 실적은 거의 평균에 가깝다. 이번 옥시덴탈 투자 역시 실패할 수도 있는 것이다. 하지만 투자에서 중요한 것은 100% 이기는 것이 아니다. 사람은 매번 옳은 결정을 내릴 수는 없다. 모든 것은 꼬리사건에 좌우된다. 투자를 하다가 실패하더라도, 이를 괴로워하지말고 당연하게 받아들일줄 알아야한다. 어차피 나의 수익률 역시 꼬리사건에 좌우될 것이기 때문이다."], 
                                                   images: ["WTI Chart", "CPI Chart", "DAC"], 
                                                   imageDescriptions: ["WTI(원유) 그래프", "CPI 그래프", "2024년 완공될 옥시덴탈의 직접공기포집(DAC) 시설"])
            
    var detailParagraphEKeywords = ["워런 버핏 옥시덴탈", "워렌 버핏 옥시덴탈"]
    
    var headline: String {
        return self.detailParagraphE.headline
    }
    
    var titles: [String] {
        return self.detailParagraphE.titles
    }
    
    var paragraphs: [String] {
        return self.detailParagraphE.paragraphs
    }
    
    var images: [String] {
        return self.detailParagraphE.images
    }
    
    var imageDescriptions: [String] {
        return self.detailParagraphE.imageDescriptions
    }
}

