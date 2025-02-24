//
//  CurrencyLogic.swift
//  Assignment6
//
//  Created by Ross Spafford on 2/23/25.
//

import Foundation

struct CurrencyLogic {
    
    var roundedAmount : Int = 0
    
    var showGBP: Bool = false
    var showCDN: Bool = false
    var showEUR: Bool = false
    var showPeso: Bool = false
    
    
   
    
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
    
    
    
    
}
