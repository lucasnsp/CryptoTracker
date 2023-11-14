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
                HStack {
                    CircleButtonView(iconName: "info")
                    Text("Header")
                    CircleButtonView(iconName: "chvevron.right")
                }
                
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
