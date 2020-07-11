//
//  ViewController.swift
//  Tip
//
//  Created by Samara Wondimu on 7/8/20.
//  Copyright © 2020 Codepath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipPercentageLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControlSlider: UISlider!
    @IBOutlet weak var tipTotal: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.billAmountTextField.keyboardType = UIKeyboardType.decimalPad
        self.totalLabel.adjustsFontSizeToFitWidth = true
        // Do any additional setup after loading the view.
    }

   
    @IBAction func onTap(_ sender: Any) {
    }
    @IBAction func calculateTip(_ sender: Any) {
        //get initial bill amount and calculate tips
        let bill = Float(billAmountTextField.text!) ?? 0
        
        
        //calculate tip and total
        
        var tipPercent = Int(tipControlSlider.value)
        let tip = bill * (Float(tipPercent) / 100)
        let total = bill + tip
        
        //update the tip and total labels
        tipPercentageLabel.text = String(format: "%i",Int(tipPercent))
        totalLabel.text = String(format: "$%.2f", total)
        tipTotal.text = String(format: "$%.2f", tip)
    }
    @IBAction func onSlide(_ sender: Any) {
        //get initial bill amount and calculate tips
        let bill = Float(billAmountTextField.text!) ?? 0
       
       
        //calculate tip and total
       
        var tipPercent = Int(tipControlSlider.value)
        let tip = bill * (Float(tipPercent) / 100)
        let total = bill + tip
       
        //update the tip and total labels
        tipPercentageLabel.text = String(format: "%i",Int(tipPercent))
        totalLabel.text = String(format: "$%.2f", total)
        tipTotal.text = String(format: "$%.2f", tip)
    }
}

