//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    @IBOutlet var heightLabel: UILabel!
    @IBOutlet var weightLabel: UILabel!
    @IBOutlet var heightSlider: UISlider!
    @IBOutlet var weightSlider: UISlider!
    
    //var bmi: Float!
    
    var calculatorBrain = CalculatorBrain()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        print(String(format: "%.2f", sender.value))
        heightLabel.text = String(format: "%.2f", sender.value) + "m"
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        print(String(format: "%.0f", sender.value))
        weightLabel.text = String(format: "%.0f", sender.value) + "Kg"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let weight = weightSlider.value
        let height = heightSlider.value
//        bmi = weight / (height * height)
//        print(bmi!)
        calculatorBrain.calculateBMI(height: height, weight: weight)
        
        performSegue(withIdentifier: "goToResult", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calculatorBrain.getBMIvalue()
        }
        
    }
    
}

