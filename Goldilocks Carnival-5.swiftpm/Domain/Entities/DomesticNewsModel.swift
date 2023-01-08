//
//  DomesticNewsModel.swift
//
//  Created by Ji hyuk Song on 22/11/20.
//

import SwiftUI

struct DomesticNewsModel {
    let title: String
    let description: String
    let url: String
}

struct RefreshButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .scaleEffect(configuration.isPressed ? 0.99 : 1)
    }
}
