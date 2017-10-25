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
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setupMiddleButton() {
        
        let menuButton = UIButton(frame: CGRect(x: 0, y: 0, width: 64, height: 64))
        
        var menuButtonFrame = menuButton.frame
        menuButtonFrame.origin.y = view.bounds.height - menuButtonFrame.height
        menuButtonFrame.origin.x = view.bounds.width/2 - menuButtonFrame.size.width/2
        menuButton.frame = menuButtonFrame
        
        //Styling
        menuButton.backgroundColor = UIColor.beepBlue
        menuButton.layer.cornerRadius = menuButtonFrame.height/2
     view.addSubview(menuButton)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let tabOne = NewsViewController()
        let tabOneBarItem = UITabBarItem(title: "News", image: UIImage(named: "defaultImage.png"), selectedImage: UIImage(named: "selectedImage.png"))
        
        tabOne.tabBarItem = tabOneBarItem
        
        
        let tabTwo = NewsViewController()
        let tabTwoBarItem2 = UITabBarItem(title: "Passed", image: UIImage(named: "defaultImage2.png"), selectedImage: UIImage(named: "selectedImage2.png"))
        
        tabTwo.tabBarItem = tabTwoBarItem2
        
        let tabThree = NewsViewController()
        let tabThreeBarItem3 = UITabBarItem(title: "Open Sauce", image: UIImage(named: "defaultImage2.png"), selectedImage: UIImage(named: "selectedImage2.png"))
        
        tabThree.tabBarItem = tabThreeBarItem3
        
        let tabFour = NewsViewController()
        let tabFourBarItem4 = UITabBarItem(title: "Meet", image: UIImage(named: "defaultImage2.png"), selectedImage: UIImage(named: "selectedImage2.png"))
        
        tabFour.tabBarItem = tabFourBarItem4
        
        let tabFive = HomedatasourceController()
        let tabFiveBarItem5 = UITabBarItem(title: "User", image: UIImage(named: "defaultImage2.png"), selectedImage: UIImage(named: "selectedImage2.png"))
        
        tabFive.tabBarItem = tabFiveBarItem5
        self.viewControllers = [tabOne, tabTwo, tabThree, tabFour, tabFive]
    }
}
