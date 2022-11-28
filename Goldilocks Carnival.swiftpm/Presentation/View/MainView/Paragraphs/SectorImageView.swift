//
//  SectorImageView.swift
//
//  Created by Ji hyuk Song on 22/10/01.
//

import SwiftUI

struct SectorImageView: View {
    var image: String
    var description: String
    var imageSize: CGFloat
    
    var body: some View {
        VStack(spacing: 20) {
            HStack {
                Spacer()
                
                Image(image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: imageSize)
                    .shadow(radius: 3)
                    .padding(.top)
                
                Spacer()
            }
            
            HStack {
                Spacer()
                
                Image(systemName: "arrow.up.square.fill")
                    .foregroundColor(.black)
                
                Text(description)
                    .font(.custom("AppleSDGothicNeo-Bold", size: 13))
                    .lineSpacing(15)
                
                Spacer()
            }
        }
    }
}
