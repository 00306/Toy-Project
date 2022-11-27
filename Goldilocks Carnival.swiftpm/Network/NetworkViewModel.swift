//
//  NetworkViewModel.swift
//
//  Created by Ji hyuk Song on 22/10/01.
//

import SwiftUI
import Network

class NetworkViewModel: ObservableObject {
    let monitor = NWPathMonitor()
    let queue = DispatchQueue(label:"NetworkManager")
    @Published var isConnected = false
    
    init() {
        monitor.pathUpdateHandler = { path in
            DispatchQueue.main.async {
                withAnimation {
                    self.isConnected = path.status == .satisfied
                }
            }
        }
        monitor.start(queue: queue)
    }
}
