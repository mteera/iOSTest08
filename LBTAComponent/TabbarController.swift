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
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setupMiddleButton() {
        
        let menuButton = UIButton(frame: CGRect(x: 0, y: 0, width: 128, height: 64))
        
        var menuButtonFrame = menuButton.frame
        menuButtonFrame.origin.y = view.bounds.height - menuButtonFrame.height
        menuButtonFrame.origin.x = view.bounds.width/2 - menuButtonFrame.size.width/2
        menuButton.frame = menuButtonFrame
        
        //Styling
        menuButton.backgroundColor = UIColor.darkGray
        menuButton.layer.cornerRadius = menuButton.layer.frame.width/2
        menuButton.setImage(UIImage(named: "OS-eye-white-condensed"), for: UIControlState.normal)
        menuButton.addTarget(self, action: #selector(TabbarController.menuButtonAction), for: UIControlEvents.touchUpInside)
        view.addSubview(menuButton)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        setupMiddleButton()
        let tabOne = NewsViewController()
        let tabOneBarItem = UITabBarItem(title: "News", image: UIImage(named: "megaphone-selected"), selectedImage: UIImage(named: ""))
        
        tabOne.tabBarItem = tabOneBarItem
        
        
        let tabTwo = NewsViewController()
        let tabTwoBarItem2 = UITabBarItem(title: "Passed", image: UIImage(named: "thumbs-down-selected"), selectedImage: UIImage(named: ""))
        
        tabTwo.tabBarItem = tabTwoBarItem2
        
        let tabThree = NewsViewController()
        let tabThreeBarItem3 = UITabBarItem(title: "", image: UIImage(named: "defaultImage2.png"), selectedImage: UIImage(named: "selectedImage2.png"))
        
        tabThree.tabBarItem = tabThreeBarItem3
        
        let tabFour = NewsViewController()
        let tabFourBarItem4 = UITabBarItem(title: "Meet", image: UIImage(named: "thumbs-up-selected"), selectedImage: UIImage(named: ""))
        
        tabFour.tabBarItem = tabFourBarItem4
        
        let tabFive = HomedatasourceController()
        let tabFiveBarItem5 = UITabBarItem(title: "User", image: UIImage(named: "user-selected"), selectedImage: UIImage(named: "user-selected"))
        
        tabFive.tabBarItem = tabFiveBarItem5
        self.viewControllers = [tabOne, tabTwo, tabThree, tabFour, tabFive]
        
    }
    
    func menuButtonAction(sender: UIButton) {
        self.selectedIndex = 2
        // console print to verify the button works
        print("Middle Button was just pressed!")
    }

}
