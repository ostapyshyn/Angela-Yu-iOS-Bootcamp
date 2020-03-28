//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct StoryBrain {
    // Move the story progression functionality that currently lives in the choiceMade() IBAction into the nextStory() method.
    var storyNumber = 0
    
    var stories = [Story(title: "You see a fork in the road.", choice1: "Take a left.", choice2: "Take a right."),
                   Story(title: "You see a tiger.", choice1: "Shout for help.", choice2: "Play dead."),
                   Story(title: "You find a treasure chest.", choice1: "Open it.", choice2: "Check for traps.")
    ]
    
    
    mutating func nextStory() -> Int {
        storyNumber = storyNumber + 1
        return storyNumber
        
    }
}
