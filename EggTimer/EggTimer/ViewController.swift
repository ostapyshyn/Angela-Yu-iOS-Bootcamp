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
    
    let eggTimes = ["softTime": 5, "mediumTime": 7, "hardTime": 12]
    
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        let hardness = sender.currentTitle!
        
        print(eggTimes[hardness]!)
        
//        switch hardness {
//        case "Soft":
//            print(softTime)
//        case "Hard":
//            print(hardTime)
//        case "Medium":
//            print(mediumTime)
//        default:
//            print("else")
//        }
        
    }
    
}
