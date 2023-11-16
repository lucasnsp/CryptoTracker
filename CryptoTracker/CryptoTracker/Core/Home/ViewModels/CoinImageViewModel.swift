//
//  CoinImageViewModel.swift
//  CryptoTracker
//
//  Created by Lucas Neves dos santos pompeu on 16/11/23.
//

import Foundation
import SwiftUI

class CoinImageViewModel: ObservableObject {
    
    @Published var image: UIImage? = nil
    @Published var isLoading: Bool = false
    
    private let coin: CoinModel
    private let dataService: CoinImageService
    
    init(coin: CoinModel) {
        self.coin = coin
        self.dataService = CoinImageService(urlString: coin.image)
        self.AddSubscribers()
    }
    
    private func AddSubscribers() {
        
    }
}
