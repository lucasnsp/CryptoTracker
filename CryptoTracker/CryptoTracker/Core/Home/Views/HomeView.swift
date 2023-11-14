//
//  HomeView.swift
//  CryptoTracker
//
//  Created by Lucas Neves dos santos pompeu on 14/11/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            // background later
            Color.theme.background
                .ignoresSafeArea()
            
            // content layer
            VStack {
                Text("Header")
                Spacer(minLength: 0)
            }
        }
    }
}

#Preview {
    NavigationStack {
        HomeView()
            .toolbar(.hidden)
    }
    
}
