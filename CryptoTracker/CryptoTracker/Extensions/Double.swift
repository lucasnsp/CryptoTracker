//
//  Double.swift
//  CryptoTracker
//
//  Created by Lucas Neves dos santos pompeu on 15/11/23.
//

import Foundation

extension Double {
    
    /// Converts a Double into a Currency with 2 decimal places
    /// ```
    ///  Convert 1234.56 to $1,234.56
    /// ```
    private var currencyFormatter2: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.usesGroupingSeparator = true
        formatter.locale = .autoupdatingCurrent
        formatter.currencyCode = "usd" // <- change currency
        formatter.currencySymbol = "$" // <- change currency symbol
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 2
        return formatter
    }
    
    /// Converts a Double into a Currency as a string with 2-6 decimal places
    /// ```
    ///  Convert 1234.56 to "$1,234.56"
    /// ```
    public func asCurrencyWith2Decimals() -> String {
        let number = NSNumber(value: self)
        return currencyFormatter2.string(from: number) ?? "$0.00"
    }
    
    /// Converts a Double into a Currency with 2-6 decimal places
    /// ```
    ///  Convert 1234.56 to $1,234.56
    ///  Convert 12.3456 to $12.3456
    ///  Convert 0.123456 to $0.123456
    /// ```
    private var currencyFormatter6: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.usesGroupingSeparator = true
        formatter.locale = .autoupdatingCurrent
        formatter.currencyCode = "usd" // <- change currency
        formatter.currencySymbol = "$" // <- change currency symbol
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 6
        return formatter
    }
    
    /// Converts a Double into a Currency as a string with 2-6 decimal places
    /// ```
    ///  Convert 1234.56 to "$1,234.56"
    ///  Convert 12.3456 to "$12.3456"
    ///  Convert 0.123456 to "$0.123456"
    /// ```
    public func asCurrencyWith6Decimals() -> String {
        let number = NSNumber(value: self)
        return currencyFormatter6.string(from: number) ?? "$0.00"
    }
    
    /// Converts a Double into a string representation
    /// ```
    ///  Convert 1.23456 to "1.23"
    /// ```
    public func asNumberString() -> String {
        return String(format: "%.2f", self)
    }
    
    
    /// Converts a Double into a string representation with percent symbol
    /// ```
    ///  Convert 1.23456 to "1.23%"
    /// ```
    public func asPercentageString() -> String {
        return asNumberString() + "%"
    }
}
