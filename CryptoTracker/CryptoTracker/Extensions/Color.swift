//
//  Color.swift
//  CryptoTracker
//
//  Created by Lucas Neves dos santos pompeu on 14/11/23.
//

import Foundation
import SwiftUI

extension Color {
    
    static let theme = ColorTheme()
}

struct ColorTheme {
    
    let accent = Color("AccentColor")
    let background = Color("BackgroundColor")
    let green = Color("GreenColor")
    let red = Color("RedColor")
    let secondaryText = Color("SecondaryTextColor")
}
