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
    
    @IBOutlet var tipButtons: [UIButton]!
    
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
        contentView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
    }

    private func setupButtons() {
//        //use the array index as the tag value so we can identify buttons
//        var buttonIndex = 0
//        for button in tipButtons {
//            button.tag = buttonIndex
//            buttonIndex += 1
//        }
    }
    
    @IBAction func handleTipPercentButtonTouchUp(_ sender: UIButton) {
        sender.tintColor = .orange
        
    }
    
  
    
}
