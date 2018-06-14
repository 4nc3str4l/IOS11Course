//
//  ViewController.swift
//  Destini
//
//  Created by Philipp Muellauer on 01/09/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // UI Elements linked to the storyboard
    @IBOutlet weak var topButton: UIButton!         // Has TAG = 1
    @IBOutlet weak var bottomButton: UIButton!      // Has TAG = 2
    @IBOutlet weak var storyTextView: UILabel!
    
    let storyBank = StoryBank()
    var currentStory: Story? = StoryBank.instance?.list[0]

    override func viewDidLoad() {
        super.viewDidLoad()
        showCurrentStory()
    }

    func showCurrentStory(){
        storyTextView.text = currentStory?.text
        if(currentStory?.storyA != nil){
            topButton.isHidden = false
            topButton.setTitle(currentStory?.answerA, for: .normal)
        }else{
            topButton.setTitle("Reset", for: .normal)
        }
        
        if(currentStory?.storyB != nil){
            bottomButton.isHidden = false
        bottomButton.setTitle(currentStory?.answerB, for: .normal)
        }else{
            bottomButton.isHidden = true
        }
    }
    
    // User presses one of the buttons
    @IBAction func buttonPressed(_ sender: UIButton) {
        if sender.tag == 1{
            if currentStory?.storyA != nil{
                currentStory = currentStory?.storyA
            }else{
                currentStory = storyBank.list[0]
            }
        }else{
            if currentStory?.storyB != nil{
                currentStory = currentStory?.storyB
            }
        }
        showCurrentStory()
    }
}

