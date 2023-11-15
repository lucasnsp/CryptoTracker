//
//  CryptoTrackerApp.swift
//  CryptoTracker
//
//  Created by Lucas Neves dos santos pompeu on 14/11/23.
//

import SwiftUI

@main
struct CryptoTrackerApp: App {
    
    @StateObject var vm = HomeViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                HomeView()
                    .toolbar(.hidden)
            }
            .environmentObject(vm)
        }
    }
}
