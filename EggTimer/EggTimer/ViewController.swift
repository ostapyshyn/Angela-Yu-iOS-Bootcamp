//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import Foundation
import AVFoundation


class ViewController: UIViewController {
    
    var player: AVAudioPlayer!
    
    @IBOutlet var labelTop: UILabel!
    @IBOutlet var progressBar: UIProgressView!
    
    let softTime = 5
    let mediumTime = 7
    let hardTime = 12
    
    let eggTimes = ["Soft": 5, "Medium": 7, "Hard": 8]
    
    var totalTime = 60
    var secondsPassed = 0
    
    var timer = Timer()
    
    
    @IBAction func hardnessSelected(_ sender: UIButton)  {
        
        timer.invalidate()
        let hardness = sender.currentTitle!
        
        totalTime = eggTimes[hardness]!
        
        progressBar.progress = 0
        secondsPassed = 0
        labelTop.text = hardness
        
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)

    }
    
    @objc func updateCounter() {
        //example functionality
        if secondsPassed < totalTime  {
            secondsPassed += 1
            let percentage: Float = Float(secondsPassed) / Float(totalTime)
            
            progressBar.progress = Float(percentage)
            
        } else {
            timer.invalidate()
            labelTop.text = "DONE!"
            playSound(soundName: "alarm_sound")
        }
        
    }
    
    func playSound(soundName: String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "mp3")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
    
    
    
    
}
