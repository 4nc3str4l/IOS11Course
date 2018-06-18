//
//  Category.swift
//  TodoList
//
//  Created by Cristian Muriel Ordoñez on 18/6/18.
//  Copyright © 2018 Cristian Muriel Ordoñez. All rights reserved.
//
import Foundation
import RealmSwift

class Category : Object {
    @objc dynamic var name: String = ""
    let items = List<Item>()
}
