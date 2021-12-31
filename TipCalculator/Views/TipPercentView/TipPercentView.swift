//
//  TipPercentView.swift
//  TipCalculator
//
//  Created by Paula R on 12/30/21.
//
// Better description of using a custom view from a xib file
// https://betterprogramming.pub/swift-3-creating-a-custom-view-from-a-xib-ecdfe5b3a960

import UIKit


protocol TipPercentViewDelegate: AnyObject {
    func tipPercentChanged(tipPercent: Int)
}

class TipPercentView: UIView {
    @IBOutlet var contentView: UIView!
    @IBOutlet weak var fifteenPercentButton: UIButton!
    @IBOutlet var tipButtons: [UIButton]!
    
    var tipPercent = 15
    
    weak var delegate: TipPercentViewDelegate?
    
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
        
        initialTipButtonSetup()
    }

    private func initialTipButtonSetup() {
        selectTipButton(selectedButton: fifteenPercentButton)
    }
    
    private func selectTipButton(selectedButton: UIButton) {
        // "turn off" all the buttons
        for aButton in tipButtons {
            aButton.tintColor = .gray
        }
        
        // "turn on" selected button
        selectedButton.tintColor = .orange
        
        tipPercent = selectedButton.tag
        delegate?.tipPercentChanged(tipPercent: self.tipPercent)
    }
    
    @IBAction func handleTipPercentButtonTouchUp(_ sender: UIButton) {
        selectTipButton(selectedButton: sender)
    }
    
  
    
}
