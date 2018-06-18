//
//  AppDelegate.swift
//  TodoList
//
//  Created by Cristian Muriel Ordoñez on 17/6/18.
//  Copyright © 2018 Cristian Muriel Ordoñez. All rights reserved.
//

import UIKit
import CoreData
import RealmSwift

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        //print(Realm.Configuration.defaultConfiguration.fileURL)
        do{
            _ = try Realm()
        }catch{
            print("Error initialising new realm, \(error)")
        }
        return true
    }
    
}

