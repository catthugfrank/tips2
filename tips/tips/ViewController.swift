//
//  ViewController.swift
//  tips
//
//  Created by Frank Vu  on 4/6/19.
//  Copyright © 2019 Frank Vu . All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipLabel: UILabel!
    
    
    @IBOutlet weak var totalLabel: UILabel!
    
    
    @IBOutlet weak var billField: UITextField!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func onTap(_ sender: Any) {
        print("Hello")
        
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        
        let bill = Double(billField.text!) ?? 0
        // get the bill amount
        let tipPercentages = [ 0.15, 0.18, 0.2]
        
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        // calc the tip and total
        //update
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    
}

