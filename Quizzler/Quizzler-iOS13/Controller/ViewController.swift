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
    
    var quizBrain = QuizBrain()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //progressBar.progress = Float(0)
        updateUI()
    }
    
    
    
    
    
    
    
    @IBAction func answerButtonTapped(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle! // true false button
        let userGotItRight = quizBrain.checkAnswer(of: userAnswer)
        
        
        
        if userGotItRight {
            print("You are right!")
            
            
//            if sender.currentTitle == "False" {
//                sender.backgroundColor = UIColor.green
//                trueButtom.backgroundColor = UIColor.clear
//            } else if sender.currentTitle == "True" {
//                sender.backgroundColor = UIColor.green
//                falseButton.backgroundColor = UIColor.clear
//            }
            
                
            
            sender.backgroundColor = UIColor.green
            
        } else {
            print("You Made A Mistake!")
//            if sender.currentTitle == "False" {
//                sender.backgroundColor = UIColor.red
//                trueButtom.backgroundColor = UIColor.clear
//            } else if sender.currentTitle == "True" {
//                sender.backgroundColor = UIColor.red
//                falseButton.backgroundColor = UIColor.clear
//            }
            
           
            sender.backgroundColor = UIColor.red
            
        }
        
        print(questionNumber, quiz.count)
        
        
        
        //var timer = Timer()
        //timer =
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
       
        //updateUI()
        let percentage: Float = Float(questionNumber + 1) / Float(quiz.count)
                    
        progressBar.progress = percentage
        
        
    }
    
    @objc func updateUI() {
        topLabel.text = quizBrain.getQuestionText()
        
        
        trueButtom.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
        
        
        let percentage: Float = quizBrain.getProgress()
                    
        progressBar.progress = percentage
        
    }
    

}

