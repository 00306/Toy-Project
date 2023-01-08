//
//  SectorParagraph.swift
//
//  Created by Ji hyuk Song on 22/10/01.
//

import SwiftUI

struct SectorParagraph: View {
    var title: String?
    var description: String
    
    init(title: String?, description: String) {
        self.title = title
        self.description = description
    }
    
    init(description: String) {
        self.description = description
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text(title ?? "")
                .font(.custom("AppleSDGothicNeo-Bold", size: 17))
                .padding()
            
            Text(description)
                .font(.custom("AppleSDGothicNeo-Bold", size: 13))
                .lineSpacing(15)
                .multilineTextAlignment(.leading)
                .padding()
        }
        .padding()
    }
}
