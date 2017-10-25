//
//  EventDataSource.swift
//  LBTAComponent
//
//  Created by Chace Teera on 25/10/2017.
//  Copyright © 2017 chaceteera. All rights reserved.
//

import LBTAComponents
import TRON
import SwiftyJSON


class EventDatasource: Datasource {
    
    // Define the object to populate table
    let words = ["SEO", "CMS", "Project Management"]
    
    override func headerClasses() -> [DatasourceCell.Type]? {
        return [HeaderCell.self]
    }
    
    override func cellClasses() -> [DatasourceCell.Type] {
        return [EventCell.self]
    }
    
    
    
    // Assign the items to an indexPath for the table
    override func item(_ indexPath: IndexPath) -> Any? {
        return words[indexPath.item]
    }
    
    // Populate the number of sections with the number of items in object
    override func numberOfItems(_ section: Int) -> Int {
        
        return words.count
    }

}

extension EventDatasoucecontroller {
    
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
