//
//  ProfileviewController+Nav.swift
//  LBTAComponent
//
//  Created by Chace Teera on 25/10/2017.
//  Copyright © 2017 chaceteera. All rights reserved.
//

import UIKit

extension HomedatasourceController {
    
    func setupNavigationBarItems() {
        navigationItem.title = "Me"
        setupLeftNavItems()
        setupRightNavItems()
        
    }
    
    private func setupLeftNavItems() {
        let backButton = UIButton(type: .system)
        backButton.setTitle("Back", for: .normal)
        backButton.setImage(UIImage.init(named: "left-arrow"), for: .normal)
        backButton.frame = CGRect(x: 0, y: 0, width: 25, height: 25)
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: backButton)
    }
    
    private func setupRightNavItems() {
        let settingsButton = UIButton(type: .system)
        settingsButton.setImage(#imageLiteral(resourceName: "settings"), for: .normal)
        settingsButton.frame = CGRect(x: 0, y: 0, width: 25, height: 25)
        navigationItem.rightBarButtonItem = UIBarButtonItem(customView: settingsButton)
        navigationController?.navigationBar.backgroundColor = .white
        navigationController?.navigationBar.isTranslucent = false
        
    }
}
