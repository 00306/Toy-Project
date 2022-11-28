//
//  ReferenceNewsArticle.swift
//
//  Created by Ji hyuk Song on 22/10/01.
//

import SwiftUI

struct ReferenceNewsArticle: View {
    var title: String
    var description: String
    
    var body: some View {
        VStack(spacing: 10) {
            Text(title)
                .font(.custom("AppleSDGothicNeo-Bold", size: 13))
                .foregroundColor(.black)
            
            Text(description)
                .font(.custom("AppleSDGothicNeo-Bold", size: 13))
                .foregroundColor(.black)
        }
        .frame(width: 150, height: 100)
        .padding()
        .background(Color.deepDarkBrown.cornerRadius(10).opacity(0.4).border(.black, width: 0.01).shadow(radius: 0.6))
    }
}


