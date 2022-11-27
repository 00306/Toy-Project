//
//  NetworkViewModel.swift
//
//  Created by Ji hyuk Song on 22/10/01.
//

import SwiftUI
import Network

class NetworkViewModel: ObservableObject {
    let monitor = NWPathMonitor()
    let queue = DispatchQueue(label: "NetworkManager")
    @Published var isNetworkConnected = false
    
    init() {
        monitor.pathUpdateHandler = { path in
            withAnimation {
                self.isNetworkConnected = path.status == .satisfied
            }
        }
        monitor.start(queue: queue)
    }
}
