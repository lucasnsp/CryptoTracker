//
//  HapticManager.swift
//  CryptoTracker
//
//  Created by Lucas Neves dos santos pompeu on 20/11/23.
//

import Foundation
import SwiftUI

class HapticManager {
    
    static private let generator = UINotificationFeedbackGenerator()
    
    static func notification(type: UINotificationFeedbackGenerator.FeedbackType) {
        generator.notificationOccurred(type)
    }
}
