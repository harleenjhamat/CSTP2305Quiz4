//
//  _305Quiz4App.swift
//  2305Quiz4
//
//  Created by Harleen Jhamat on 2022-03-02.
//

import SwiftUI

@main
struct _305Quiz4App: App {
    let network = Network()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(network)
        }
    }
}
