//
//  AppDelegate.swift
//  Desingnr
//
//  Created by Rayan El-Cheikh Youssef on 23.04.24.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        initApp()
        makeSettings()
        return true
        
        
    }
    func initApp(){
        print("Hello")
        window = UIWindow(frame: UIScreen.main.bounds)
        let vc = HomeVC()
        let nav = UINavigationController(rootViewController: vc)
        window?.rootViewController = nav
        window?.makeKeyAndVisible()
    }
    func makeSettings(){
        
    }

}

