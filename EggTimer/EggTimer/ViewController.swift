//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let softTime = 5
    let mediumTime = 7
    let hardTime = 12
    
    let eggTimes = ["Soft": 5, "Medium": 7, "Hard": 12]
    
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        let hardness = sender.currentTitle!
        
        let time = eggTimes[hardness]!
        
        let seconds = time * 60
        
        for sec in (0...seconds).reversed() {
            
            
                DispatchQueue.main.asyncAfter(deadline: .now() + 11) {
                    print("\(sec) seconds")
                    
                }

        }
        
        
    }
    
}
