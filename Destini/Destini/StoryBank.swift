//
//  StoryBank.swift
//  Destini
//
//  Created by Cristian Muriel Ordoñez on 14/6/18.
//  Copyright © 2018 London App Brewery. All rights reserved.
//

import Foundation

class StoryBank{
    var list = [Story]()
    
    static var instance: StoryBank? = nil
    
    init() {
        
        StoryBank.instance = self
        
        let story1Text = "Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: \"Need a ride, boy?\"."
        let answer1a = "I\'ll hop in. Thanks for the help!"
        let answer1b = "Better ask him if he\'s a murderer first."
        
        
        let story2Text = "He nods slowly, unphased by the question."
        let answer2a = "At least he\'s honest. I\'ll climb in."
        let answer2b = "Wait, I know how to change a tire."
        
        let story3Text = "As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box."
        let answer3a = "I love Elton John! Hand him the cassette tape."
        let answer3b = "It\'s him or me! You take the knife and stab him."
        
        let story4Text = "What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?"
        let story5Text = "As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in."
        let story6Text = "You bond with the murderer while crooning verses of \"Can you feel the love tonight\". He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: \"Try the pier.\""
        
        let story6: Story = Story(text: story6Text, answerA: "", answerB: "", storyA: nil, storyB: nil)
        let story5: Story = Story(text: story5Text, answerA: "", answerB: "", storyA: nil, storyB: nil)
        let story4: Story = Story(text: story4Text, answerA: "", answerB: "", storyA: nil, storyB: nil)
        let story3: Story = Story(text: story3Text, answerA: answer3a, answerB: answer3b, storyA: story6, storyB: story5)
        let story2: Story = Story(text: story2Text, answerA: answer2a, answerB: answer2b, storyA: story3, storyB: story4)
        let _: Story = Story(text: story1Text, answerA: answer1a, answerB: answer1b, storyA: story3, storyB: story2)
        
    }
}
