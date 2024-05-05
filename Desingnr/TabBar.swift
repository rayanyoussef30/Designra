//
//  TabBar.swift
//  Desingnr
//
//  Created by Rayan El-Cheikh Youssef on 05.05.24.
//

import UIKit

class TabBar: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
addTabBar()
        
    }

    func addTabBar(){
        let main = MainVC()
        main.tabBarItem = TabBarItem(title:"" , unselImg: "HomeUnsel", selImg: "homeSel")
        
        let favorit = MainVC()
        favorit.tabBarItem = TabBarItem(title:"" , unselImg: "favUnsel", selImg: "FavoritSel")
        
        let settings = MainVC()
        settings.tabBarItem = TabBarItem(title:"" , unselImg: "settingUnsel", selImg: "settingSel")
        
        viewControllers = [main, favorit, settings]
        
    }
    func TabBarItem(title: String, unselImg:String,selImg: String ) -> UITabBarItem{
        let icon = UITabBarItem(title: title, image: UIImage(named: unselImg), selectedImage: UIImage(named: selImg))
        return icon
    }
}
