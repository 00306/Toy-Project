//
//  DomesticNewsViewModel.swift
//
//  Created by Ji hyuk Song on 22/10/01.
//

import SwiftUI

struct NewsButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .scaleEffect(configuration.isPressed ? 0.99 : 1)
    }
}

class RefreshButtons: ObservableObject {
    @Published var refreshButtonClicked: Bool = false
    @Published var stockButtonClicked: Bool = false
    @Published var cryptocurrencyButtonClicked: Bool = false
    @Published var macroeconomicButtonClicked: Bool = false
    
    var otherButtonsAreClickedExceptRefreshButton: Bool { 
        return stockButtonClicked || cryptocurrencyButtonClicked || macroeconomicButtonClicked
    }
    
    var otherButtonsAreClickedExceptStockButton: Bool { 
        return refreshButtonClicked || cryptocurrencyButtonClicked || macroeconomicButtonClicked
    }
    
    var otherButtonsAreClickedExceptCryptocurrencyButton: Bool { 
        return stockButtonClicked || refreshButtonClicked || macroeconomicButtonClicked
    }
    
    var otherButtonsAreClickedExceptMacroeconomicButton: Bool { 
        return stockButtonClicked || cryptocurrencyButtonClicked || refreshButtonClicked
    }
}
