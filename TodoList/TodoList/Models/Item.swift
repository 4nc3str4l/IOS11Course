//
//  Item.swift
//  TodoList
//
//  Created by Cristian Muriel Ordoñez on 17/6/18.
//  Copyright © 2018 Cristian Muriel Ordoñez. All rights reserved.
//

import Foundation

class Item: Codable{
    var title: String = ""
    var done: Bool = false
    
    init(t: String) {
        title = t
    }
}
