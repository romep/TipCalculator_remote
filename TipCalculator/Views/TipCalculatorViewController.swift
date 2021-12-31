//
//  TipCalculatorViewController.swift
//  TipCalculator
//
//  Created by Paula R on 12/30/21.
//

import UIKit

class TipCalculatorViewController: UIViewController, TipPercentViewDelegate {
    
    @IBOutlet weak var tipPercentView: TipPercentView!
  
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var billTotalLabel: UILabel!
    
    private var billAmount = 100.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        initialViewSetup()
        updateViews()
    }
    
    private func initialViewSetup() {
        tipPercentView.delegate = self
        
        tipAmountLabel.text = ""
    }
    
    private func updateViews() {
        print(#function)
        let tipCalculator = TipCalculator(billAmount: billAmount, tipPercent: tipPercentView.tipPercent)
        
        print("Bill Amount : \(billAmount)")
        print("Tip Percent : \(tipPercentView.tipPercent)")
        print("Bill Total : \(tipCalculator.billTotal)")
        print("Tip Amount : \(tipCalculator.tipAmount)")
        
        billTotalLabel.text = String(tipCalculator.billTotal)
        tipAmountLabel.text = String(tipCalculator.tipAmount)
    }

    func tipPercentChanged(tipPercent: Int) {
        print(#function)
        print("tipPercentChanged : \(tipPercent)")

        updateViews()
    }

}

