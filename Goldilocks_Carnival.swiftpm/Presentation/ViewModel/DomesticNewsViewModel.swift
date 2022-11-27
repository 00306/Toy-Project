//
//  DomesticNewsViewModel.swift
//
//  Created by Ji hyuk Song on 22/11/20.
//

import Combine

class RefreshButtons: ObservableObject {
    @Published var refreshButtonClicked: Bool = false
    @Published var stockButtonClicked: Bool = false
    @Published var cryptocurrencyButtonClicked: Bool = false
    @Published var macroeconomicButtonClicked: Bool = false
}

extension RefreshButtons {
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
