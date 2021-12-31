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
    
    @IBOutlet weak var billAmountTextField: UITextField!
    
    private var billAmount = 100.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        initialViewSetup()
        updateViews()
    }
    
    private func initialViewSetup() {
        tipPercentView.delegate = self
        
        billAmountTextField.text = ""
        billAmountTextField.keyboardType = .decimalPad
        billAmountTextField.becomeFirstResponder()

        tipAmountLabel.text = ""
        billTotalLabel.text = ""
    }
    
    private func updateViews() {
        print(#function)
        
        let theBillAmount = Double(billAmountTextField.text ?? "") ?? 0
        
        let tipCalculator = TipCalculator(billAmount: theBillAmount, tipPercent: tipPercentView.tipPercent)
        
        
        billTotalLabel.text = tipCalculator.billTotalAsString
        tipAmountLabel.text = tipCalculator.tipAmountAsString
    }

    func tipPercentChanged(tipPercent: Int) {
        print(#function)
        print("tipPercentChanged : \(tipPercent)")

        updateViews()
    }
    @IBAction func handleTextFieldEditingChanged(_ sender: UITextField) {
        print(#function)
        
        updateViews()
    }
    
    
}


