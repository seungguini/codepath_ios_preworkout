//
//  ViewController.swift
//  CodePath PreWorkout
//
//  Created by Seunggun Lee on 9/8/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipAmountControl: UISegmentedControl!
    @IBOutlet weak var totalAmountLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func calculateTip(_ sender: Any) {
        
        // Get bill amount from text field input
        let bill = Double(billAmountTextField.text!) ?? 0
        
        // Get Total tip by multiplying tip * tipPercentage
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill * tipPercentages[tipAmountControl.selectedSegmentIndex]
        let total = bill + tip
        
        // Update Tip Amount label
        tipAmountLabel.text = String(format: "$%.2f", tip)
        
        // Update Total Amount
        totalAmountLabel.text = String(format: "$%.2f", total)
    }
    

}

