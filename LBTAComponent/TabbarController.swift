//
//  TabbarController.swift
//  LBTAComponent
//
//  Created by Chace Teera on 25/10/2017.
//  Copyright © 2017 chaceteera. All rights reserved.
//

import UIKit

class TabbarController: UITabBarController, UITabBarControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = self
        tabBar.barTintColor = UIColor .darkGray
        tabBar.isTranslucent = false
        tabBar.tintColor = UIColor.white
        
        let tabOne = NewsViewController()
        let tabOneBarItem = UITabBarItem(title: "News", image: UIImage(named: "megaphone-selected"), selectedImage: UIImage(named: ""))
        
        tabOne.tabBarItem = tabOneBarItem
        
        
        let tabFive = HomedatasourceController()
        let tabFiveBarItem5 = UITabBarItem(title: "User", image: UIImage(named: "user-selected"), selectedImage: UIImage(named: "user-selected"))
        
        tabFive.tabBarItem = tabFiveBarItem5
        self.viewControllers = [tabOne, tabFive]
        
        setupMiddleButton()

        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setupMiddleButton() {
        
        let menuButton = UIButton(frame: CGRect(x: 0, y: 0, width: 94, height: 64))
        
        var menuButtonFrame = menuButton.frame
        menuButtonFrame.origin.y = view.bounds.height - menuButtonFrame.height
        menuButtonFrame.origin.x = view.bounds.width/2 - menuButtonFrame.size.width/2
        menuButton.frame = menuButtonFrame
        //Styling
        menuButton.backgroundColor = UIColor.darkGray
        menuButton.translatesAutoresizingMaskIntoConstraints = false
        menuButton.layer.cornerRadius = menuButton.layer.frame.width/2
        menuButton.setImage(UIImage(named: "OS-eye-white-condensed"), for: UIControlState.normal)
        menuButton.addTarget(self, action: #selector(TabbarController.menuButtonAction), for: UIControlEvents.touchUpInside)
        view.addSubview(menuButton)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        let controller1 = NewsViewController(self.view.backgroundColor = UIColor.white)
        controller1.tabBarItem = UITabBarItem(tabBarSystemItem: UITabBarSystemItem.contacts, tag: 1)
        let nav1 = UINavigationController(rootViewController: controller1)
        
        let controller2 = NewsViewController()
        controller2.tabBarItem = UITabBarItem(tabBarSystemItem: UITabBarSystemItem.contacts, tag: 2)
        let nav2 = UINavigationController(rootViewController: controller2)
        
        let controller3 = NewsViewController()
        let nav3 = UINavigationController(rootViewController: controller3)
        nav3.title = ""
        
        let controller4 = NewsViewController()
        controller4.tabBarItem = UITabBarItem(tabBarSystemItem: UITabBarSystemItem.contacts, tag: 4)
        let nav4 = UINavigationController(rootViewController: controller4)
        
        let controller5 = HomedatasourceController()
        controller5.tabBarItem = UITabBarItem(tabBarSystemItem: UITabBarSystemItem.contacts, tag: 5)
        let nav5 = UINavigationController(rootViewController: controller5)
        
        self.viewControllers = [nav1, nav2, nav3, nav4, nav5]
        self.setupMiddleButton()
    }

    func menuButtonAction(sender: UIButton) {
        self.selectedIndex = 2
        // console print to verify the button works
        print("Middle Button was just pressed!")
    }

}
