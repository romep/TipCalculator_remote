//
//  TipCalculator.swift
//  TipCalculator
//
//  Created by Paula R on 12/30/21.
//

import Foundation


struct TipCalculator {
    //inputs
    var billAmount: Double
    var tipPercent: Int //tip percent should be a number between 0 and 100
    
    
    //outputs
    var tipAmount: Double {
        billAmount * Double(tipPercent) * (0.01)
    }
    
    var tipAmountAsString: String {
        if tipAmount == 0 {
            return ""
        } else {
            return String(format: "$ %.2f", tipAmount)
        }
    }
    
    var billTotal: Double {
        billAmount + tipAmount
    }

    var billTotalAsString: String {
        if billTotal == 0 {
            return ""
        } else {
            return String(format: "$ %.2f", billTotal)
        }
    }
}
