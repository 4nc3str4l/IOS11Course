//
//  SelfDrivingCar.swift
//  Classes and Objects
//
//  Created by Cristian Muriel Ordoñez on 16/6/18.
//  Copyright © 2018 Cristian Muriel Ordoñez. All rights reserved.
//

import Foundation

class SelfDrivingCar : Car{

    var destination: String?
    
    override func drive() {
        super.drive()
        
        // this is to avoid using !( force unwrapping)
        if let userSetDestination = destination{
            print("Driving towards "  + userSetDestination)
        }
    }
}
