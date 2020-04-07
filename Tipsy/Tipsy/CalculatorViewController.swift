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
    
    var numOfSplits = 2

//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view.
//    }
    
    @IBAction func tipChanged(_ sender: UIButton) {
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
//        if zeroPctButton.isSelected {
//            print("0")
//        } else if tenPctButton.isSelected {
//            print("0.1")
//        } else if twentyPctButton.isSelected {
//            print("0.2")
//        }
        print(numOfSplits)
    }
}

