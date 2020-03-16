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
        Question(q: "A slug's blood is green.", a: "True"),
        Question(q: "Approximately one quarter of human bones are in the feet.", a: "True"),
        Question(q: "The total surface area of two human lungs is approximately 70 square metres.", a: "True"),
        Question(q: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", a: "True"),
        Question(q: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", a: "False"),
        Question(q: "It is illegal to pee in the Ocean in Portugal.", a: "True"),
        Question(q: "You can lead a cow down stairs but not up stairs.", a: "False"),
        Question(q: "Google was originally called 'Backrub'.", a: "True"),
        Question(q: "Buzz Aldrin's mother's maiden name was 'Moon'.", a: "True"),
        Question(q: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", a: "False"),
        Question(q: "No piece of square dry paper can be folded in half more than 7 times.", a: "False"),
        Question(q: "Chocolate affects a dog's heart and nervous system; a few ounces are enough to kill a small dog.", a: "True")


    ]
    
    
    
    @IBAction func answerButtonTapped(_ sender: UIButton) {
        
        
        
        let userAnswer = sender.currentTitle
        let actualAnswer = quiz[questionNumber].answer
        
        if userAnswer == actualAnswer {
            print("You are right!")
            sender.backgroundColor = UIColor.green
            
        } else {
            print("You Made A Mistake!")
            sender.backgroundColor = UIColor.red
            
            
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
        topLabel.text = quiz[questionNumber].text
    }
    

}

