//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    @IBOutlet var billTextField: UITextField!
    @IBOutlet var zeroPctButton: UIButton!
    @IBOutlet var tenPctButton: UIButton!
    @IBOutlet var twentyPctButton: UIButton!
    @IBOutlet var splitNumberLabel: UILabel!
    
    var bill: String!
    var numOfSplits = 2
    var result: Double!
    var tip: Int!

//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view.
//    }
    
    @IBAction func tipChanged(_ sender: UIButton) {
        //billTextField.endEditing(true)
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false
        sender.isSelected = true
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        splitNumberLabel.text = String(Int(sender.value))
        numOfSplits = Int(sender.value)
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        bill = billTextField.text
         
        if zeroPctButton.isSelected {
            result = Double(bill)! / Double(numOfSplits)
            tip = 0
        } else if tenPctButton.isSelected {
            result = Double(bill)! * (1 + 0.1) / Double(numOfSplits)
            tip = 10
        } else if twentyPctButton.isSelected {
            result = Double(bill)! * (1 + 0.2) / Double(numOfSplits)
            tip = 20
        }
        
        
        print(String(format: "%.2f", result))
        
        performSegue(withIdentifier: "goToResult", sender: self)
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! ResultsViewController
        destinationVC.label = String(format: "%.2f", result)
        destinationVC.message = "Split between \(numOfSplits) people, with \(tip!)% tip."
    }
    
    
}

