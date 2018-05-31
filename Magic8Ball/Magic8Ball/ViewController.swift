//
//  ViewController.swift
//  Magic8Ball
//
//  Created by Cristian Muriel Ordoñez on 31/5/18.
//  Copyright © 2018 Cristian Muriel Ordoñez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var ballImages = [String]()
    
    @IBOutlet weak var ballImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        populateBallImages()
    }
    
    func populateBallImages(){
        for i in 1..<6{
            ballImages.append("ball\(i)")
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func changeBallPrediction(){
        ballImage.image = UIImage(named: ballImages[Int(arc4random_uniform(5))])
    }
    
    @IBAction func onAskPressed(_ sender: Any) {
        changeBallPrediction()
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        changeBallPrediction()
    }
    
}

