//
//  LocalFileManager.swift
//  CryptoTracker
//
//  Created by Lucas Neves dos santos pompeu on 16/11/23.
//

import Foundation
import SwiftUI

class LocalFileManager {
    
    static let instance = LocalFileManager()
    private init() { }
    
    func saveImage(image: UIImage) {
        
        guard 
            let data = image.pngData(),
            let url = URL(string: "")
            else { return }
        
        do {
            try data.write(to: url)
        } catch let error {
            print("Error saving image. \(error)")
        }
    }
    
    private func getURLForFolder(name: String) -> URL? {
        
        guard let url = FileManager.default.urls(for: .cachesDirectory, in: .userDomainMask).first else {
            return nil
        }
        return url.appendingPathComponent(name)
    }
    
}
