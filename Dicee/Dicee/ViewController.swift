//
//  ViewController.swift
//  Dicee
//
//  Created by Cristian Muriel Ordoñez on 31/5/18.
//  Copyright © 2018 Cristian Muriel Ordoñez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var randomDiceIndex1 : UInt32 = 0
    var randomDiceIndex2 : UInt32 = 0
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        randomDiceIndex1 = arc4random_uniform(6)
        randomDiceIndex2 = arc4random_uniform(6)
        
        print(randomDiceIndex1)
        
    }
    
}

