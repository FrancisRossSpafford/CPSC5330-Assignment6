//
//  CurrencyLogic.swift
//  Assignment6
//
//  Created by Ross Spafford on 2/23/25.
//

import Foundation

struct CurrencyLogic {
    
    var Amount : Int = 0
    
    var showGBP: Bool = true
    var showCDN: Bool = true
    var showEUR: Bool = true
    var showPeso: Bool = true
    
    mutating func setShowGBP(_ switchValue: Bool) {
        if switchValue {
            showGBP = true
        } else {
            showGBP = false
        }
    }
    
    mutating func setShowCDN(_ switchValue: Bool) {
        if switchValue {
            showCDN = true
        } else {
            showCDN = false
        }
    }
    
    mutating func setShowEUR(_ switchValue: Bool) {
        if switchValue {
            showEUR = true
        } else {
            showEUR = false
        }
    }
    
    mutating func setShowPeso(_ switchValue: Bool) {
        if switchValue {
            showPeso = true
        } else {
            showPeso = false
        }
    }
    
    mutating func setAmount(_ AmountInUSD: Int) {
        Amount = AmountInUSD
    }
    
    func getAmountInGBP() -> Double {
        let conversionRate: Double = 0.79
        let amountInGBP: Double = Double(Amount) * conversionRate
        return (amountInGBP)
    }
    
    func getAmountInCDN() -> Double {
        let conversionRate: Double = 1.42
        let amountInCDN: Double = Double(Amount) * conversionRate
        return (amountInCDN)
    }
    
    func getAmountInEUR() -> Double {
        let conversionRate: Double = 0.95
        let amountInEUR: Double = Double(Amount) * conversionRate
        return (amountInEUR)
    }
    
    func getAmountInPesos() -> Double {
        let conversionRate: Double = 20.43
        let amountInPesos: Double = Double(Amount) * conversionRate
        return (amountInPesos)
    }
    
    
    
    
    
    
}
