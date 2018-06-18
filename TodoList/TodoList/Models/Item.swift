//
//  Item.swift
//  TodoList
//
//  Created by Cristian Muriel Ordoñez on 18/6/18.
//  Copyright © 2018 Cristian Muriel Ordoñez. All rights reserved.
//

import Foundation
import RealmSwift

class Item : Object {
    @objc dynamic var title: String = ""
    @objc dynamic var done: Bool = false
    var parentCategory = LinkingObjects(fromType: Category.self, property: "items")
}
