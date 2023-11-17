//
//  HomeViewModel.swift
//  CryptoTracker
//
//  Created by Lucas Neves dos santos pompeu on 15/11/23.
//

import Foundation
import Combine

class HomeViewModel: ObservableObject {
    
    @Published var allCoins: [CoinModel] = []
    @Published var portfolioCoins: [CoinModel] = []
    
    @Published var searchText: String = ""
    
    private let dataService = CoinDataService()
    private var cancellables = Set<AnyCancellable>()
    
    init() {
        addSubscribers()
    }
    
    func addSubscribers() {
        
        // updates allCoins
        $searchText
            .combineLatest(dataService.$allCoins)
            .map { (text, startingCoins) -> [CoinModel] in
                
                guard !text.isEmpty else {
                    return startingCoins
                }
                
                let lowercasedText = text.lowercased()
                
                return startingCoins.filter { coin in
                    return  coin.name.lowercased().contains(lowercasedText) ||
                            coin.symbol.lowercased().contains(lowercasedText) ||
                            coin.id.lowercased().contains(lowercasedText)
                }
            }
            .sink { [weak self] (returnedCoins) in
                self?.allCoins = returnedCoins
            }
            .store(in: &cancellables)
    }
}
