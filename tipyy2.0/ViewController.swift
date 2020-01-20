//
//  ViewController.swift
//  tipyy2.0
//
//  Created by James Morris on 1/17/20.
//  Copyright © 2020 James Morris. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipCalc: UILabel!
    @IBOutlet weak var totalCalc: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true) // Hide Keyboard when hitting screen
        
    }
    @IBAction func calcTip(_ sender: Any) {
        let bill = Double(billField.text!) ?? 0
        // Get Bill Amount if not a double entry fails, good fail safe
        let tipPs = [0.15, 0.2, 0.25]
        let tip = bill * tipPs[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        // Caclulate the Tip and Total
        tipCalc.text = String(format: "$%.2f", tip)
        totalCalc.text = String(format: "$%.2f", total)
        
        //Update the Tip and Total Labels
    }
    
}

