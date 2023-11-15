//
//  CoinRowView.swift
//  CryptoTracker
//
//  Created by Lucas Neves dos santos pompeu on 15/11/23.
//

import SwiftUI

struct CoinRowView: View {
    
    let coin: CoinModel
    
    var body: some View {
        Text(coin.name)
    }
}

#Preview {
    CoinRowView(coin: DeveloperPreview.instance.coin)
}
