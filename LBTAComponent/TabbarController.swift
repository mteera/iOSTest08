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
        tabBar.barTintColor = UIColor .black
        tabBar.isTranslucent = false
        tabBar.tintColor = UIColor.white
        
        setupMiddleButton()

        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setupMiddleButton() {
        
        let menuButton = UIButton(frame: CGRect(x: 0, y: 0, width: 104, height: 64))
        
        var menuButtonFrame = menuButton.frame
        menuButtonFrame.origin.y = view.bounds.height - menuButtonFrame.height
        menuButtonFrame.origin.x = view.bounds.width/2 - menuButtonFrame.size.width/2
        menuButton.frame = menuButtonFrame
        //Styling
        menuButton.backgroundColor = UIColor.black
        menuButton.layer.cornerRadius = menuButton.layer.frame.width/2
        menuButton.setImage(UIImage(named: "OS-eye-white-condensed"), for: UIControlState.normal)
        menuButton.addTarget(self, action: #selector(TabbarController.menuButtonAction), for: UIControlEvents.touchUpInside)
        view.addSubview(menuButton)
    }
    

    
    override func viewDidAppear(_ animated: Bool) {
        let controller1 = EventDatasoucecontroller(self.view.backgroundColor = UIColor.white)
        controller1.tabBarItem.title = "News"
        controller1.tabBarItem.image = UIImage(named: "megaphone-selected")
        let nav1 = UINavigationController(rootViewController: controller1)
        nav1.title = "News"
        
        let controller2 = UIViewController()
        controller2.tabBarItem.title = "Pass"
        controller2.tabBarItem.image = UIImage(named: "thumbs-down-selected")
        let nav2 = UINavigationController(rootViewController: controller2)
        nav2.title = "Pass"
        
        let controller3 = AttendeesDatasourceController()
        let nav3 = UINavigationController(rootViewController: controller3)
        nav3.title = ""
        
        let controller4 = UIViewController()
        controller4.tabBarItem.title = "Meet"
        controller4.tabBarItem.image = UIImage(named: "thumbs-up-selected")
        let nav4 = UINavigationController(rootViewController: controller4)
        nav4.title = "Meet"
        
        let controller5 = ProfileDatasourceController()
        controller5.tabBarItem.title = "User"
        controller5.tabBarItem.image = UIImage(named: "user-selected")
        let nav5 = UINavigationController(rootViewController: controller5)
        nav5.title = "Me"
        
        self.viewControllers = [nav1, nav2, nav3, nav4, nav5]
        self.setupMiddleButton()
    }

    func menuButtonAction(sender: UIButton) {
        self.selectedIndex = 2
        // console print to verify the button works
        print("Middle Button was just pressed!")
    }

}
