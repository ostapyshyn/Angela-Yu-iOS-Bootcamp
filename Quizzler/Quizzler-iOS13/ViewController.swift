//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var topLabel: UILabel!
    @IBOutlet var progressBar: UIProgressView!
    
    @IBOutlet var trueButtom: UIButton!
    @IBOutlet var falseButton: UIButton!
    
    var questionNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    
    
    let quiz = [
        ["2 + 8 = 10", "True"],
        ["3 - 2 = 1", "True"],
        ["3 * 6 = 14", "False"]
    ]
    
    
    
    @IBAction func answerButtonTapped(_ sender: UIButton) {
        
        
        
        let userAnswer = sender.currentTitle
        let actualAnswer = quiz[questionNumber][1]
        
        if userAnswer == actualAnswer {
            print("You are right!")
            
        } else {
            print("You Made A Mistake!")
            
        }
        
        print(questionNumber, quiz.count)
        if questionNumber < quiz.count-1 {
            questionNumber += 1
            updateUI()
        } else  {
            questionNumber = 0
            updateUI()
        }
        
        
        
    }
    
    func updateUI() {
        topLabel.text = quiz[questionNumber][0]
    }
    

}

