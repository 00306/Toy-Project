//
//  ParagraphFViewModel.swift
//
//  Created by Ji hyuk Song on 22/10/01.
//

struct ParagraphFViewModel: Summary {
    var paragraphF = Paragraph(title: "NOTABLE INDEXES", 
                               subTitle: "CSIㆍCPIㆍCORE PCEㆍGDPㆍNonfarm PayrollsㆍUnemployment Rate", 
                               summary: "U.S. inflation reached New Four-Decade high in June. It made Fed consider to hike interest rates 100bp. Although CPI didn't apply giant step, Opinions that interest rates will be hiked 100bp prevailed. After that, Michigan Univ. announced CSI that reducing uncertainty meaningful. It slightly higher than preliminary estimates. Absolutely, 0.75bp is never low figure but as fear of 100bp was resolved, Stock indexes bounced. In this situation, Someone start to buy the dip and someone hold their short position. As time goes by, They will know the answer but They are then wise after the event. it is useless. However, Observing the indicators makes them wise before the event.")
    
    var title: String {
        return self.paragraphF.title
    }
    
    var subTitle: String {
        return self.paragraphF.subTitle
    }
    
    var summary: String {
        return self.paragraphF.summary
    }
}

struct DetailParagraphFViewModel: Writing {
    var detailParagraphF: DetailParagraph = DetailParagraph(headline: "NOTABLE INDEXES", 
                                                            titles: ["경제지표", "현 상황", "경제지표", "마법의 단어 선반영"], 
                                                            paragraphs: [
                                                            "각 국 중앙은행은 다양한 경제지표를 보고 정책의 방향성을 결정한다. 미국의 6월 CPI가 9.1%로 급등하면서 Fed가 금리를 100bp 인상하는 것을 고려하게된 것이 그 예시이다. 즉, 당시 경제상황에 비중있는 경제지표를 보면 중앙은행의 정책이 어느정도 예상가능하다는 것이다. 그리고 그 정책이 주식시장에 영향을 주기때문에 시장의 방향도 어느정도 예측가능하다. 하지만 경제가 성장ㆍ발전함에 따라 그만큼 다양한 지표들이 있어 개인이 모든 지표들을 보고 판단하기는 힘들다. 그래서 현 경제상황에 비중이 높은 몇 가지의 지표들을 중점적으로 봐야한다.",
                        
                                                            "지표를 보기 전, 현 경제가 어떤 상황인지 아는 것이 필수이다. 현 상황을 예시로 들어보면, 지금은 인플레이션 상황이다. 인플레이션을 해결하기 위해서 금리를 급하게 올리고 있고 또 그로 인해 경기침체가 올 수 있는 가능성 역시 염려해 수시로 실업률, GDP, PCE 등를 확인하면서 경기 연착륙을 목표로 두고 있다. 저 지표들이 예상치에 맞게 나오는지 아니면 예상치와 크게 다른지에 따라 주식시장이 다르게 반응한다.",
                        
                                                            "아래는 현 경제상황에서 투자 결정에 도움되는 6가지 지표들이다.\n\n첫 번째는 미국 소비자심리지수(CSI)로 향후 경기상황에서 소비자들의 소비심리를 조사한 심리지표이다. 지수가 오르면 소비자들이 미래를 보다 낙관적으로 생각하여 소비하려는 심리가 늘고 있고, 지수가 내리면 소비자들이 미래를 비관적으로 생각하여 소비하려는 심리가 위축되고 있다고 이해하면 된다.\n\n두 번째는 미국 소비자물가지수(CPI)로 도시 가구 소비자들이 생활을 위해 구입하는 상품 및 서비스의 평균 가격을 측정하는 실물지표로 미 노동통계국에서 가계 조사 데이터를 기반으로 계산한 물가지수의 일종이다. 인플레이션을 측정할 수 있는 수단이다. 이 지표가 오르면 인플레이션이 심해지는 것을 의미하고, 내리면 인플레이션이 안정화되거나 디플레이션이 심해짐을 의미한다. \n\n세 번째는 미국 근원 개인소비지출(Core PCE)로 개인소비지출(PCE)은 각 가정이나 민간 비영리기관이 상품 및 서비스를 이용하는데 지불한 비용을 모두 합친 실물지표로 CPI보다 서비스업의 비중이 크다. 여기서 변동폭이 큰 에너지나 식품가격을 제외한 수치를 근원 개인소비지출(Core PCE)라고 한다. 특정 기간동안 국민들이 지출을 늘렸는지 줄였는지 파악할 수 있다. 지수가 오르면 인플레이션이 심해지는 것을 의미하고, 내리면 인플레이션이 안정화되거나 디플레이션이 심해짐을 의미한다. \n\n네 번째는 국내총생산(GDP)으로 일정 기간동안 한 나라 안에서 생산된 모든 재화와 서비스의 시장 가치를 화폐 단위로 환산하여 더한 값이다. ‘어느 나라 국적을 가진 사람들이 생산활동에 참여했느냐’ 에 상관없이 그 나라 영토 안에서 창출해낸 모든 것을 계산한다. 실질GDP의 증감률로 경제성장률을 나타내기 때문에 경기침체를 측정할 수 있는 수단이다. \n\n다섯 번째는 비농업고용지수(Nonfarm PAYROLLS)로 농ㆍ축산업을 제외한 전월의 고용인구수 변화를 측정한다. 고용 회복에 따라 소비가 활성화되기 때문에 경기침체를 측정할 수 있는 수단이다. \n\n여섯 번째는 실업률(Unemployment rate)로 지난달 실업상태에 있으며 적극적으로 구직활동을 하는 총노동력의 비율을 측정한 지표이다. 고용지수와 마찬가지로 실업하는 사람들이 적고 고용이 많이 되면 소비가 활성화되기 때문에 경기침체를 측정할 수 있는 수단이다. \n\n위 지표들이 대부분 국민의 소비과 관련됨을 알 수 있는데, 미국 GDP에서 소비가 차지하는 비중이 약 70%로 매우 높기 때문에 소비를 매우 중요하게 생각한다. 미국의 개인소비가 위축되면 미국의 경제회복이 쉽지 않을 것이다.",
                        
                        
                                                            "투자를 하다보면 이론과 현실경제에 괴리가 있을 때가 자주있다. 예를 들어, 금리가 인상되면 주가는 하락한다고 하는데, 두 번째 자이언트 스텝이 있었던 7월 28일에 미국 3대지수가 일제히 상승마감을 했다. ‘아니 금리가 인상되면 주가가 떨어진다며, 심지어 75bp나 올렸는데 왜 오르냐’ 고 생각할 수 있다. 꼭 그럴 때 경제기사를 보면 ‘금리 인상에 대한 하락은 이미 시장에 선반영되어있었고, 금리 인상 당일날 불확실성이 해소됨에 따라 상승했다.’ 라고 얘기한다. 이런 행태를 보고 주식시장이 막무가내라고 생각하는 사람이 많을 것이다. 대충 반대로 움직인 다음, 선반영이랍시고 돈을 가져가는데 억울할만하다고 생각한다. 하지만 이런 선반영은 투자자들이 앞서 설명한 경제지표들을 보고 중앙은행의 발표를 예측해서 손실에 대비해 미리 움직인 것이다. 예측과 다른 정책발표를 한다면 큰 하락이 있었을 것이다. 만약 위의 예시에서 Fed가 갑자기 75bp 인상이 아닌 100bp 인상을 단행했다면, 금리 발표 당일날 시장은 일제히 하락했을 것이다. 지표들의 일정을 부지런히 확인해 선반영에 당하지 않길 바란다."
                                                           ], 
                                                           images: ["Core PCE"], 
                                                           imageDescriptions: ["미 연준 의장 파월이 Core PCE를 선호한다고 직접 언급한 바 있다."])
    
    var detailParagraphFKeywords = ["지표 CPI PCE", "미국 CPI", "미증시 CPI", "미국 PCE", "미증시 PCE"]
    
    var headline: String {
        return self.detailParagraphF.headline
    }
    
    var titles: [String] {
        return self.detailParagraphF.titles
    }
    
    var paragraphs: [String] {
        return self.detailParagraphF.paragraphs
    }
    
    var images: [String] {
        return self.detailParagraphF.images
    }
    
    var imageDescriptions: [String] {
        return self.detailParagraphF.imageDescriptions
    }
}

