//
//  TipPercentView.swift
//  TipCalculator
//
//  Created by Paula R on 12/30/21.
//

import UIKit

class TipPercentView: UIView {
    var tipPercent = 6.0
    
    
    class func instanceFromNib() -> TipPercentView! {
        let view = UINib(nibName: "TipPercentView", bundle: nil).instantiate(withOwner: nil, options: nil)[0] as! TipPercentView
        return view
    }
    func setTip(tip: Double) {
        tipPercent = tip
    }
    
    func selectedTipPercent() -> Double {
        return tipPercent
    }
}
