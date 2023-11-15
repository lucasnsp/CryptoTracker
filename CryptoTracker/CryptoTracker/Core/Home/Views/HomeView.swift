//
//  HomeView.swift
//  CryptoTracker
//
//  Created by Lucas Neves dos santos pompeu on 14/11/23.
//

import SwiftUI

struct HomeView: View {
    
    @EnvironmentObject private var vm: HomeViewModel
    @State private var showPortfolio: Bool = false
    
    var body: some View {
        ZStack {
            // background later
            Color.theme.background
                .ignoresSafeArea()
            
            // content layer
            VStack {
                homeHeader
                
                if !showPortfolio {
                    List {
                        ForEach(vm.allCoins) { coin in
                            CoinRowView(coin: coin, showHoldingsColumn: false)
                        }
                    }
                    .listStyle(PlainListStyle())
                    .transition(.move(edge: .leading))
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
    .environmentObject(DeveloperPreview.instance.homeVM)
}

extension HomeView {
    private var homeHeader: some View {
        HStack {
            CircleButtonView(iconName: showPortfolio ? "plus" : "info")
                .background(
                    CircleButtonAnimationView(animate: $showPortfolio)
                )
            Spacer()
            Text(showPortfolio ? "Portfolio" : "Live Prices")
                .font(.headline)
                .fontWeight(.heavy)
                .foregroundStyle(Color.theme.accent)
                .animation(.none)
            Spacer()
            CircleButtonView(iconName: "chevron.right")
                .rotationEffect(Angle(degrees: showPortfolio ? 180 : 0))
                .onTapGesture {
                    withAnimation(.spring()) {
                        showPortfolio.toggle()
                    }
                }
        }
        .padding(.horizontal)
    }
}
