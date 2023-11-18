//
//  PortfolioView.swift
//  CryptoTracker
//
//  Created by Lucas Neves dos santos pompeu on 18/11/23.
//

import SwiftUI

struct PortfolioView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 0) {
                    Text("Hi")
                }
            }
            .navigationTitle("Edit Portfolio")
            .toolbar(content: {
                ToolbarItem(placement: .topBarLeading) {
                    XMarkButton()
                }
            })
        }
    }
}

#Preview {
    PortfolioView()
}
