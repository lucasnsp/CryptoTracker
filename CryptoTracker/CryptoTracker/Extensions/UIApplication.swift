//
//  UIApplication.swift
//  CryptoTracker
//
//  Created by Lucas Neves dos santos pompeu on 17/11/23.
//

import Foundation
import SwiftUI

extension UIApplication {
    
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
