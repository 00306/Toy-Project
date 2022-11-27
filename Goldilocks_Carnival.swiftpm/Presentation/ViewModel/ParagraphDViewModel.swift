//
//  SectorDViewModel.swift
//
//  Created by Ji hyuk Song on 22/10/01.
//

struct ParagraphDViewModel: Summary {
    var paragraphD = Paragraph(title: "Ray Dalio's", 
                               subTitle: "All WEATHER Portfolio.", 
                               summary: "To reduce risk in your portfolio, you needs to build your portfolio complemently. Each elements in yours should have low correlation and it's investment ratio should be analytic. However, It won't be easy to you. you may not major in economics in college or you have probably been having a hectic days for years. For your sake i'm about to introduce some verified investment strategy.")
        
    var title: String {
        return self.paragraphD.title
    }
    
    var subTitle: String {
        return self.paragraphD.subTitle
    }
    
    var summary: String {
        return self.paragraphD.summary
    }
}

struct DetailParagraphDViewModel: Writing {
    var detailParagraphD: DetailParagraph = DetailParagraph(headline: "asset allocation", 
                                                            titles: ["자산배분", "올웨더 포트폴리오", "주식과 채권의 동질화", "경기와 물가", "나도 20조 있으면 저렇게 했지"], 
                                                            paragraphs: [
                                                            "계란은 한바구니에 담지 말라는 말이 있다. 바구니가 잘못되면 내가 들고 있는 모든 계란이 깨져버리기 때문이다. 투자에서도 마찬가지이다. 하나의 자산에 올인했다가 그 자산이 내 판단과 반대로 움직여 잘못되면 대처할 방법이 없어 그대로 손실로 이어진다. 그래서 투자자들이 안정적인 수익을 내기 위해서는 자산배분을 통한 리스크 관리가 필수다. 미국의 한 연구에서 수익률 변동 요소를 자산배분, 시장예측, 증권선택으로 나눠 파악해본 결과, 자산배분이 총 수익률 변동에 91.5%를 좌우한다고 한다. 하지만 아무거나 산다고 리스크 관리가 자동으로 될까? 주식을 시작한지 얼마안된 초보 투자자들이 스스로 상관계수가 낮은 종목들을 적절한 비율로 포트폴리오를 구성하기는 버거울 것이다. 그래서 개인투자자들은 스스로 포트폴리오를 구성하기도하지만 전문가에게 자산을 맡겨 관리하게 하거나, 유명투자자들의 포트폴리오를 따라한다.아래서 투자자라면 다 알고 있을만한 유명투자자의 포트폴리오 하나를 소개하려한다.",
                        
                                                            "세계 최대의 헤지펀드 브리지워터 어소시에이츠의 창립자 레이 달리오는 경제에는 자연처럼 사계절이 존재한다고 말한다. 경제성장률이 시장기대보다 증가, 감소하거나 물가 상승률이 증가, 감소할 수 있다는 것이다. 이런 시장의 변화에 자산들은 고유의 특성에 따라 다양하게 반응한다. 우리가 시장의 변화를 예측하기는 힘드니, 서로 다른 특성을 가진 자산들에 분산 투자하여 리스크를 최소화하는 방향으로 포트폴리오를 구성한다. 이를 자산배분이라고 한다. 레이 달리오는 이런 방식을 이용하여 어떤 경제 환경에서도 꾸준히 수익을 보는 올웨더 포트폴리오를 만들었다. 이는 따라하기도 쉽고 리스크 관리도 확실하면서 관리도 크게 필요하지 않는데 수익도 꾸준히 나 많은 투자자들에게 사랑받고 있다. 그럼 어떤 종목을 어떤 비율로 투자해야 올웨더 포트폴리오를 만들 수 있을까? 레이 달리오는 개인투자자를 위해 올웨더 포트폴리오 레시피를 공개했다.",
                        
                                                            "\n\n주식 - 30%\n장기채권 - 40% (주식과 상관관계가 매우 낮아 헷징용)\n단기채권 - 15%\n금 - 7.5% (주가 하락, 금리 상승시 대비 자산)\n원자재 - 7.5%  (인플레이션 대비 자산)\n\n",
                        
                        
                                                            "위 종목들을 ETF로 구성하면 포트폴리오의 취지에 맞게 더욱 안정성을 더할 수 있다. 반드시 레시피의 비율대로 따라할 필요도 없다. 투자자의 투자성향에 맞게 바꿔도 무방하다. 실제로 올웨더 포트폴리오를 꾸준히 공부해온 투자자들도 자신들의 입맛에 맞게 비율을 조정하거나 ETF를 매수한다. 하지만 완벽해보이는 이 포트폴리오도 단점이 있다. 바로 상승장에서의 수익률이 저조하다는 것이다. 투자자산의 70%를 안전성 위주로 투자하고, 이 포트폴리오에서 수익을 책임지는 자산인 주식이 30%라는 점에서 드라마틱한 수익률을 기대하긴 쉽지 않다.",
                        
                                                            "주식과 채권은 전통적으로 낮은 상관관계를 가져 자산배분 시 헤지수단으로 선택하는 경우가 잦았다. 그러나 최근에는 주식과 채권의 가격이 동반하락하는 현상이 나타나면서 양의 상관관계를 가지는 듯한 움직임을 보이고 있다. 이 두 자산의 상관관계가 올라가게 되면 자산배분의 효과는 감소하여 헤지수단으로는 적절하지 않게 된다. 주식과 채권이 높은 상관관계를 가지게 될 때는 포트폴리오 구성에서 주식의 헤지수단으로 다른 대체 투자 자산을 선택해야한다. 그렇다면 언제 상관관계가 바뀔까?",
                        
                                                            "투자자산들에 가장 큰 영향을 주는 요인을 뽑자면 경기와 물가일 것이다. 주식과 채권 역시 이들에게 큰 영향을 받는다. 경기가 좋아지면 개인의 소비가 늘어나고 기업의 실적이 좋아져 기업 가치의 상승을 기대할 수 있다. 따라서 주가 상승을 유발하고, 채권은 금리의 동반 상승으로 가격이 하락한다. 즉, 경기와 주식은 비례하고, 채권은 반비례한다.\n물가가 오르면 금리의 동반 상승으로 기업은 같은 돈을 벌어도 전보다 더 많은 자본비용을 내야하기 때문에 이윤이 줄어든다. 그리고 금리인상기에는 안전자산으로 몰리는 경향이 크기 때문에 주식에 대한 수요가 줄어든다. 이는 주가에 반영되어 주가 하락을 유발한다. 채권은 금리의 동반 상승으로 가격이 하락한다. 즉, 물가와 주식은 반비례하고, 채권도 반비례한다. 아래는 이를 경기-물가 그래프에 대입해본 것이다.",
                        
                                                            "경기가 스태그플레이션일 때나 골디락스일 때는 서로의 헤지수단으로 적절해보인다. 반면 인플레이션일 때나 리세션일 때는 상황에 따라 동질화가 나타날 수 있어 채권 대신 다른 대체 투자 자산을 선택하는게 더 안정적인 포트폴리오를 만드는데 도움이 될 것이다.",
                        
                                                            "올웨더 포트폴리오는 훌륭한 전략이지만 상당히 방어적인 포트폴리오이다. 하지만 과연 방어적인 전략이 현 세대의 간지러운 부분을 시원하게 긁어줄 수 있을까? 변동성이 크다는걸 메리트로 보고 주식, 암호화폐 투자에 뛰어든 세대들이 원하는 것은 드라마틱한 수익률일 것이다. 하지만 높은 수익률에는 반드시 리스크가 따른다. 그래서 상대적으로 리스크가 큰 공격적인 포트폴리오로 성투하기 위해서는 부지런해야하고, 정보에 귀를 더 기울여야 한다. 최적의 리밸런싱 주기를 찾고 최적의 리밸런싱 전략을 선정해야한다. 투자하고자 하는 기업 분석도 꼼꼼하게 해야한다. 혹여나 이렇게 말하면 공격적인 포트폴리오가 주식 100%인 것 처럼 오해할 수 있을거 같아 말하지만, 공격적인 포트폴리오 역시 방어적인 포트폴리오와 투자 방식은 크게 다를 바 없다. 단지 포트폴리오 내 위험자산의 비율이 늘어날 뿐이다."
                                                           ], 
                                                           images: ["asset allocation", "ray Dalio", "Allweatherportfolio", "S&P500 sixMonth", "High Yield Bond ETF six Month", "Four seasons graph", "Overconfidence"], 
                                                           imageDescriptions: ["주식과 채권이 동질화 된 모습이다."])
    
    var detailParagraphDKeywords = ["자산배분 올웨더 레이 달리오"]
    
    var headline: String {
        return self.detailParagraphD.headline
    }
    
    var titles: [String] {
        return self.detailParagraphD.titles
    }
    
    var paragraphs: [String] {
        return self.detailParagraphD.paragraphs
    }
    
    var images: [String] {
        return self.detailParagraphD.images
    }
    
    var imageDescriptions: [String] {
        return self.detailParagraphD.imageDescriptions
    }
}

