//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Volodymyr Ostapyshyn on 03.04.2020.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    
    var bmi: Float!
    
    mutating func calculateBMI(height: Float, weight: Float) {
    
        bmi = weight / (height * height)  
    }
    
    func getBMIvalue() -> String {
        return String(format: "%.1f", bmi)
    }

}
