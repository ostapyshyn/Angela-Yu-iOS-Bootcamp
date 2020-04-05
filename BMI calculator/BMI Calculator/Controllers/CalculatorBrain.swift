//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Volodymyr Ostapyshyn on 03.04.2020.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float) {
    
        let bmiValue = weight / (height * height)
        bmiResultMessage(of: bmiValue)
        
        
        //bmi = BMI(value: bmiValue, advice: <#T##String#>, color: <#T##UIColor#>)
    }
    
    func getBMIvalue() -> String {
        return String(format: "%.1f", bmi?.value ?? "0.0")
    }
    
    mutating func bmiResultMessage(of bmiVal: Float) {
        switch bmiVal {
        case ..<18.5:
            bmi = BMI(value: bmiVal, advice: "Eat more pies!", color: #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1))
        case ...24.9:
            bmi = BMI(value: bmiVal, advice: "Fit as a fiddle!", color: #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1))
        case 24.9...:
            bmi = BMI(value: bmiVal, advice: "Eat less pies!", color: #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1))
        default:
            print("Error")
        }
    }
    
    func getAdvice() -> String {
        
        return bmi!.advice
    }
    
    func getColor() -> UIColor {
        
        return bmi!.color
    }
    
    

}
