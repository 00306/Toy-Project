//
//  MainViewModel.swift
//
//  Created by Ji hyuk Song on 22/11/20.
//

struct MainViewModel {
    var mainModel = MainModel(title: "The Goldilocks Canival", headline: "GIANT STEP!")
    
    var title: String {
        return mainModel.title
    }
    
    var headline: String {
        return mainModel.headline
    }
}
