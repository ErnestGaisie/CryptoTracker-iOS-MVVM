//
//  Double.swift
//  SwiftfulCrypto
//
//  Created by Ernest Gaisie on 01/02/2025.
//

import Foundation

extension Double {
    
    /// Converts a double into a currency with 2 decimal places
    /// ```
    ///   Convert 1234.56 to $1,234.56
    /// ```
    private var currencyFormatter2: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.usesGroupingSeparator = true
        formatter.numberStyle = .currency
//        formatter.locale = .current // <- default value
        formatter.currencyCode = "cad" // <- Change currency
//        formatter.currencySymbol = "$" // <- Change currency symbol
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 2
        return formatter
    }
    
    
    /// Converts a double into a currency as a string with 2 decimal places
    /// ```
    ///   Convert 1234.56 to "$1,234.56"
    /// ```
    func asCurrencywith2Decimals() -> String {
        let number = NSNumber(value: self)
        return currencyFormatter2.string(from: number) ?? "$0.00"
    }
    
    /// Converts a double into a currency with 2-6 decimal places
    /// ```
    ///   Convert 1234.56 to $1,234.56
    ///   Convert 12.3456 to $12.34.56
    ///   Convert 0.123456 to $0.123456
    /// ```
    private var currencyFormatter6: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.usesGroupingSeparator = true
        formatter.numberStyle = .currency
//        formatter.locale = .current // <- default value
        formatter.currencyCode = "cad" // <- Change currency
//        formatter.currencySymbol = "$" // <- Change currency symbol
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 6
        return formatter
    }
    
    
    /// Converts a double into a currency as a string with 2-6 decimal places
    /// ```
    ///   Convert 1234.56 to "$1,234.56"
    ///   Convert 12.3456 to "$12.34.56"
    ///   Convert 0.123456 to "$0.123456"
    /// ```
    func asCurrencywith6Decimals() -> String {
        let number = NSNumber(value: self)
        return currencyFormatter6.string(from: number) ?? "$0.00"
    }
    
    /// Converts a double into a string representation
    /// ```
    ///   Convert 1.2345 to "1.23"
    /// ```
    func asNumberString() -> String {
        return String(format: "%.2f",self)
    }
    
    /// Converts a double into a string representation with percent symbol
    /// ```
    ///   Convert 1.2345 to "1.23%"
    /// ```
    func asPercentString() -> String{
        return asNumberString() + "%"
    }
}
