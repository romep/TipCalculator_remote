//
//  TipPercentView.swift
//  TipCalculator
//
//  Created by Paula R on 12/30/21.
//
// Better description of using a custom view from a xib file
// https://betterprogramming.pub/swift-3-creating-a-custom-view-from-a-xib-ecdfe5b3a960

import UIKit




class TipPercentView: UIView {
    var tipPercent = 6.0
    @IBOutlet var contentView: UIView!
    
    @IBOutlet weak var fifteenPercentButton: UIButton!
    
    override init(frame: CGRect) { // for creating view in code
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) { // for creating view in IB
        super.init(coder: aDecoder)
        commonInit()
    }
    
    private func commonInit() {
        Bundle.main.loadNibNamed("TipPercentView", owner: self, options: nil)
        addSubview(contentView)
        contentView.frame = self.bounds
//        contentView.translatesAutoresizingMaskIntoConstraints = false
        contentView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        

//        let theView = Bundle.main.loadNibNamed("TipPercentView", owner: self, options: nil)![0] as! UIView
////
////        self.addSubview(theView)
//        self.addSubview(contentView)
//        theView.frame = self.bounds
    }
    
//    class func instanceFromNib() -> TipPercentView! {
//        let view = UINib(nibName: "TipPercentView", bundle: nil).instantiate(withOwner: nil, options: nil)[0] as! TipPercentView
//        return view
//    }
//    func setTip(tip: Double) {
//        tipPercent = tip
//    }
//
//    func selectedTipPercent() -> Double {
//        return tipPercent
//    }
}
