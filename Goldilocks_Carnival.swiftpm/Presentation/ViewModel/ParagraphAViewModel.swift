//
//  SectorAViewModel.swift
//
//  Created by Ji hyuk Song on 22/10/01.
//

protocol Summary {
    var title: String { get }
    var subTitle: String { get }
    var summary: String { get }
}

protocol Writing {
    var headline: String { get }
    var titles: [String] { get }
    var paragraphs: [String] { get }
    var images: [String] { get }
    var imageDescriptions: [String] { get }
}

struct ParagraphAViewModel: Summary {
    var paragraphA = Paragraph(title: "I", 
                               subTitle: "", 
                               summary: "n 2020, Impact of COVID-19 pandemic threatened real economy. To prevent coronavirus infection, People stayed at their home that naturally caused lack of consumer confidence. It led to recession eventually, KOSPI, DOW, S&P500.. all crashed. Fed announced emergency rate cut to near zero on March 15 to minimaize the economic impact of the COVID-19.")

    var title: String {
        return self.paragraphA.title
    }
    
    var subTitle: String {
        return self.paragraphA.subTitle
    }
    
    var summary: String {
        return self.paragraphA.summary
    }
}

struct DetailParagraphAViewModel: Writing {
    var detailParagraphA: DetailParagraph = DetailParagraph(headline: "GENERATION GAP", 
                                                   titles: ["코로나 시대", "연준의 총 자산 그래프", "부러진 사다리", "기성세대의 잘못인걸까?"], 
                                                   paragraphs: [
                                                "2020년은 1930년 대공황 이후 가장 큰 경제위기였다. IMF의 자료에 의하면 1996년 IMF 외환위기, 2008년 글로벌 금융위기 때보다 훨씬 낮은 세계경제성장률을 보인다. 질병의 확산으로 전 세계가 심각한 경기침체에 빠졌고 경기를 부양하기 위해 연준과 정부에서 전례없는 재정정책과 통화정책을 시행하였다.\n통화정책으로 연준은 정책금리를 0.25%로 고정하고, 금리 조정만으로는 시장을 제어할 수 없다고 판단하여 무제한 양적완화를 선언했다. 2020년 3월부터 매월 1200억 달러씩 특정채권들을 매입하여 총 자산이 8조 7500억 달러에 달했다.",
           
                                                "재정정책으로 조 바이든 미국 대통령은 ‘미국 구제계획’이라고 불리는 1.9조 달러 규모의 경기부양책을 3차례에 걸쳐 시행하여 재난지원금을 국민들에게 지급했고 미국뿐만 아닌 거의 모든 국가들이 재난소득같은 헬리콥터 머니(Helicopter money)가 재정정책에 포함했다.",
                                                   
                                                "이런 전례없는 규모의 정책들이 시중에 유동성을 공급하여 주식시장은 활기를 찾는 것을 넘어서 과열되기 시작했고, 급격한 주가반등을 본 투자를 하지않던 개인들도 너도나도 투자에 뛰어들기 시작했다. 특히 20ㆍ30대들의 증권계좌 개설량이 급증했고, 이들은 암호화폐 신규 가입자 수에 높은 비중을 차지했다.",
                                            
                                                "암호화폐나 주식같은 변동성이 큰 위험자산에 투자하는걸 보고, 요즘 세대는 한방만 노린다. 맨날 마셔대는 커피를 덜 마시고 해외여행을 덜 가면 집을 살 수 있을 것이라는 비판을 받기도 한다. 하지만 현재의 청년층들은 기성세대들의 젊은시절에 비해 소득을 체감하기 어려운 환경에 놓여있다. 과거에는 금리가 높으면서 집 값은 낮아서 취업 후 열심히 예금, 적금을 들면 내 집 마련이 그렇게 어렵지 않았다. 하지만 현 세대는 저금리 시대가 10년 남짓 지속되면서 예금, 적금으로 재산을 늘릴 수 없게 되었다. 또 부동산 값도 천정부지로 치솟으면서 내 집 마련은 남 얘기가 되었다. 기성세대는 상대적으로 취업 또한 어렵지 않았다. 숙련편향적 기술진보의 시대라고 불리는 요즘과 달리 당시에는 스펙이 좀 떨어지더라도, 회사에 들어가서 열심히 하면 충분히 인정 받을 수 있는 시대였다. 반면 요즘 세대는 취업문도 더욱 더 좁아졌다. 의학의 발전으로 인간의 수명이 증가하면서, 기성세대의 노년기가 길어지게 되었고, 정부의 정책에 의해 정년이 늘어나게 되었다. 문제는 기성세대가 우리나라에서 아이가 가장 많이 태어난 베이비붐 세대라는 것이다. 기업들은 은퇴할 나이가 된 수많은 직원들을 몇 년 더 고용하게되면서 생기는 추가 지출뿐만 아니라 현재 고용하고 있는, 또 앞으로 고용할 청년층들을 늘어난 정년만큼 고용할 비용까지 고려해 신규채용을 전부터 줄이고 있었는데, 거기에 코로나19 펜데믹까지 겹치면서 기업들의 상황이 나빠지자 신규채용을 더 줄여버린 것이다. 이 외에도 시장의 구조적인 문제, 기성세대의 국민연금 수령시기 등 취업문이 좁아진 이유는 다양하다. 이렇게 수많은 악재를 안고 경제층으로 거듭난 지금의 청년들은 상대적으로 인상률이 저조한 월급만으로는 생존할 수 없다고 판단하고 코로나19로 인해 폭락한 주식이나 적은 돈으로도 매매할 수 있는 암호화폐를 선택하게 된 것이다.",
                                                
                                                "이렇게만 보면 기성세대가 현 세대의 수많은 악재의 주 원인으로 보인다. 지금도 현세대와 기성세대의 갈등은 갈수록 심화되고 있고, 뉴스에서 나오는 비리들을 보고있으면 현세대 입장에서 충분히 불공정하다고 느낄 수 밖에 없다는 생각이 들기도 했다. 자신의 지위나 권력을 이용해 막대한 이득을 취하는, 또는 자기 자식에게 이득을 쥐어주는 걸 보고 있으면, 어떻게든 생존하기 위해 잠 줄여가며 아둥바둥하고 있는 나 자신에 환멸감을 느끼기도 한다. 하지만 그런 소수의 악질 때문에 기성세대 전체가 폄하되고, 갈등이 더욱 심화되는 걸 보니 마음이 아프다. 기성세대가 경제층이던 시기가 호황기였던건 맞지만, 또 그만큼 자본운용에 따라 빈부격차가 매우 심한 세대이기도 하다. 그들은 한창 경제층일 때 IMF외환위기, 글로벌금융위기을 겪었다. 부양해야할 가정이 있는데 실업자가 되고, 불공정이 만연했던 회사에서 버티며 힘들게 대출끼고 마련한 집이 폭락하거나, 우리 집만 빼고 모든 집이 폭등하기도 하는 등 다사다난한 나날들을 보내왔다. 지금처럼 인터넷이 활성화되어있지 않아서 정보격차도 매우 심했다. 거기에다 자의든 아니든 60, 70이 되서까지 여전히 일하고 있다. 그들도 그저 시대의 흐름에 맞춰 열심히 살아왔을 뿐이라고 생각한다. 현 세대가 겪고 있는 고난은 이들의 잘못이라기 보다는 저출산, 취업난, 국민연금 기금 고갈 등 현대의 문제들를 반영하지 못하는 과거로부터 만들어진 구시대적인 경제 시스템의 문제일 것이다.",], 
                                               images: ["Fed balance sheet", "Helicopter Money", "Stock account 2020", "upbit", "Korea Interest Rate", "Real estate in Seoul"], 
                                               imageDescriptions: ["연준의 총 자산 그래프", "증권계좌 개설 증가율", "국내 암호화폐 거래소 ‘업비트’ 신규 가입자 추이", "한국 금리 차트", "서울시 아파트 매매가격 지수"])
        
    var detailParagraphAKeywords = ["코로나 양적완화 통화정책", "부모보다 가난한 세대 세대 갈등 MZ세대 기성세대"]
    
    var headline: String {
        return self.detailParagraphA.headline
    }
    
    var titles: [String] {
        return self.detailParagraphA.titles
    }
    
    var paragraphs: [String] {
        return self.detailParagraphA.paragraphs
    }
    
    var images: [String] {
        return self.detailParagraphA.images
    }
    
    var imageDescriptions: [String] {
        return self.detailParagraphA.imageDescriptions
    }
}
