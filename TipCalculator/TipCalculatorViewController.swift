//
//  TipCalculatorViewController.swift
//  TipCalculator
//
//  Created by Paula R on 12/30/21.
//

import UIKit

class TipCalculatorViewController: UIViewController {
    
    @IBOutlet weak var tipPercentView: TipPercentView!
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        initialViewSetup()
        updateViews()
    }
    
    private func initialViewSetup() {
        tipPercentView.tipPercent = 999
    }
    
    private func updateViews() {
        print(#function)
        let tipCalculator = TipCalculator(billAmount: 100.0, tipPercent: 10.0)
        
        print("Bill Total : \(tipCalculator.billTotal)")
        print("Tip Percent : \(tipPercentView.tipPercent)")
        print("Tip button count : \(tipPercentView.tipButtons.count)")

    }


}

