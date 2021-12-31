//
//  TipCalculatorViewController.swift
//  TipCalculator
//
//  Created by Paula R on 12/30/21.
//

import UIKit

class TipCalculatorViewController: UIViewController {
    //pwr: do I need to worry about making this weak var?
    weak var tipPercentView: TipPercentView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        initialViewSetup()
        updateViews()
    }
    
    private func initialViewSetup() {
         
        tipPercentView = TipPercentView.instanceFromNib()
        view.addSubview(tipPercentView!)
        
        
        print("Tip Percent : \(tipPercentView!.selectedTipPercent())")

    }
    
    private func updateViews() {
        print(#function)
        let tipCalculator = TipCalculator(billAmount: 100.0, tipPercent: 10.0)
        
//        tipPercentView?.setTip(tip: 89.9)
        tipPercentView?.tipPercent = 45.2
        print("Bill Total : \(tipCalculator.billTotal)")
        print("Tip Percent : \(tipPercentView?.selectedTipPercent())")

    }


}

