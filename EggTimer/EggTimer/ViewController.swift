//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    
    
    
    @IBOutlet var labelTop: UILabel!
    
    let softTime = 5
    let mediumTime = 7
    let hardTime = 12
    
    let eggTimes = ["Soft": 5, "Medium": 7, "Hard": 8]
    
    var timeLeft = 60
    
    var timer = Timer()
    
    
    @IBAction func hardnessSelected(_ sender: UIButton)  {
        timer.invalidate()
        let hardness = sender.currentTitle!
        
        let time = eggTimes[hardness]!
        
        
        
            
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)
        timeLeft = time
        
        

    }
    
    @objc func updateCounter() {
        //example functionality
        if timeLeft > 0 {
            print("\(timeLeft) seconds.")
            timeLeft -= 1
        } else {
            timer.invalidate()
            labelTop.text = "DONE!"
        }
        
    }
}
