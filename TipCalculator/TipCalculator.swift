//
//  TipCalculator.swift
//  TipCalculator
//
//  Created by Paula R on 12/30/21.
//

import Foundation


struct TipCalculator {
    var billAmount: Double
    var tipPercent: Double
    
    var tipAmount: Double {
        billAmount * tipPercent * (0.01)
    }
    var billTotal: Double {
        billAmount + tipAmount
    }
}
