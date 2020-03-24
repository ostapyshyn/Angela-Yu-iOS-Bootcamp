//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    
    var stories = [Story(title: "You see a fork in the road.", choice1: "Take a left.", choice2: "Take a right."),
                   Story(title: "You see a tiger.", choice1: "Shout for help.", choice2: "Play dead."),
                   Story(title: "You find a treasure chest.", choice1: "Open it.", choice2: "Check for traps.")
    ]
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        storyLabel.text = stories[0].title
        choice1Button.setTitle(stories[0].choice1, for: .normal)
        choice2Button.setTitle(stories[0].choice2, for: .normal)
        
        
        
    }
    
    @IBAction func choiceMade(_ sender: UIButton) {
        switch sender.currentTitle {
        case "Take a left.":
            updateUI(1)
        case "Take a right.":
        updateUI(2)
        default:
            updateUI(0)
        }
    }
    
    func updateUI(_ num: Int) {
        storyLabel.text = stories[num].title
        choice1Button.setTitle(stories[num].choice1, for: .normal)
        choice2Button.setTitle(stories[num].choice2, for: .normal)
    }
    
    
    
}

