//
//  NetworkErrorView.swift
//
//  Created by Ji hyuk Song on 22/10/01.
//

import SwiftUI
import Network

struct NetworkErrorView: View {
    @EnvironmentObject var networkViewModel: NetworkViewModel
    
    var body: some View {
        GeometryReader { networkError in
            Image("background")
                .ignoresSafeArea()

            VStack {
                Text("?")
                    .font(Font.custom("HeadlineOneHPLHS", size: 600))
                Text("Network Error")
                    .font(Font.custom("HeadlineOneHPLHS", size: 100))
                    .padding()
                Button(action: { networkViewModel.monitor.start(queue: networkViewModel.queue) }) {
                    Text("Reconnect")
                        .font(Font.custom("HeadlineOneHPLHS", size: 60))
                        .padding(10)
                        .border(.black, width: 8)
                        .cornerRadius(2)
                }
            }
            .padding()
            .foregroundColor(.black)
            .position(x: networkError.size.width / 2, y: networkError.size.height / 2)
        }
    }
}
