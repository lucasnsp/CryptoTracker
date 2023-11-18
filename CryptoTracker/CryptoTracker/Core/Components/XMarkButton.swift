//
//  XMarkButton.swift
//  CryptoTracker
//
//  Created by Lucas Neves dos santos pompeu on 18/11/23.
//

import SwiftUI

struct XMarkButton: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        Button(action: {
            presentationMode.wrappedValue.dismiss()
    },
        label: { Image(systemName: "xmark")
            .font(.headline)
    })
    }
}

#Preview {
    XMarkButton()
}
