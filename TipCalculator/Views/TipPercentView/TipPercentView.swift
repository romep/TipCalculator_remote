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
//            aButton.tintColor = .white
////            aButton.setTitleColor(UIColor(named: "Tip_DarkBlue"), for: .normal)
//            aButton.setTitleColor(.black, for: .normal)
            aButton.backgroundColor = .white
            aButton.setTitleColor(UIColor(named: "Tip_DarkBlue"), for: .normal)
            aButton.layer.cornerRadius = 16.0
            setShadowOn(button: aButton)
        }
        
        // "turn on" selected button
//        selectedButton.tintColor = UIColor(named: "Tip_DarkBlue")
        selectedButton.backgroundColor = UIColor(named: "Tip_DarkBlue")
        selectedButton.setTitleColor(.white, for: .normal)
        selectedButton.layer.cornerRadius = 10.0
        setShadowOn(button: selectedButton)

        
   
        
        tipPercent = selectedButton.tag
        delegate?.tipPercentChanged(tipPercent: self.tipPercent)
    }
    
    private func setShadowOn(button: UIButton){
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOffset = CGSize(width: 0, height: 1 )
        button.layer.shadowOpacity = 0.48
        button.layer.shadowRadius = 1.0
    }
    
    @IBAction func handleTipPercentButtonTouchUp(_ sender: UIButton) {
        selectTipButton(selectedButton: sender)
    }
    
  
    
}
