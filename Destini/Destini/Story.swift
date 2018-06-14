//
//  Story.swift
//  Destini
//
//  Created by Cristian Muriel Ordoñez on 14/6/18.
//  Copyright © 2018 London App Brewery. All rights reserved.
//

import Foundation

class Story{
    let text: String
    let answerA : String
    let answerB : String
    
    let storyA: Story?
    let storyB: Story?
    
    init(text: String, answerA: String, answerB: String, storyA: Story?, storyB: Story?) {
        self.text = text
        self.answerA = answerA
        self.answerB = answerB
        self.storyA = storyA
        self.storyB = storyB
        StoryBank.instance?.list.insert(self, at: 0)
    }
}
