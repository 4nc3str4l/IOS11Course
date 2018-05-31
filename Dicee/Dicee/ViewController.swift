//
//  ViewController.swift
//  Dicee
//
//  Created by Cristian Muriel Ordoñez on 31/5/18.
//  Copyright © 2018 Cristian Muriel Ordoñez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateDiceImages()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func getRandomDice(element: UIImageView){
        element.image = UIImage(named: diceArray[Int(arc4random_uniform(6))])
    }
    
    func updateDiceImages(){
        getRandomDice(element: diceImageView1)
        getRandomDice(element: diceImageView2)
    }
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        updateDiceImages()
    }
}

