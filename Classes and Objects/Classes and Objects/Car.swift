//
//  Car.swift
//  Classes and Objects
//
//  Created by Cristian Muriel Ordoñez on 16/6/18.
//  Copyright © 2018 Cristian Muriel Ordoñez. All rights reserved.
//

import Foundation


enum CarType{
    case Sedan
    case Coupe
    case Hatchback
}

class Car {
    
    var color = "Black"
    var numberOfSeats = 5
    var typeOfCar : CarType = .Coupe
    
    init() {
    }
    
    convenience init (customerChooseColor: String){
        self.init()
        color = customerChooseColor;
    }
    
    func drive(){
        print("Car is moving")
    }
}
