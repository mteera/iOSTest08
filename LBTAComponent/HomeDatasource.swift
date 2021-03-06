//
//  HomeDatasource.swift
//  LBTAComponent
//
//  Created by Chace Teera on 22/10/2017.
//  Copyright © 2017 chaceteera. All rights reserved.
//

import LBTAComponents
import TRON
import SwiftyJSON


class HomeDatasource: Datasource {
    
    // Define the object to populate table
    let words = ["SEO", "CMS", "Project Management"]
    
    override func headerClasses() -> [DatasourceCell.Type]? {
        return [HeaderCell.self]
    }
    
    override func cellClasses() -> [DatasourceCell.Type] {
        return [InterestsCell.self, SummaryCell.self, MemberSinceCell.self, IndustryCell.self, TitleHeaderCell.self, LinksCell.self]
    }
    

    
    // Assign the items to an indexPath for the table
    override func item(_ indexPath: IndexPath) -> Any? {
        return words[indexPath.item]
    }
    
    // Populate the number of sections with the number of items in object
    override func numberOfItems(_ section: Int) -> Int {
        if section == 1 {
            return 1
        } else if section == 2 {
            return 1
        } else if section == 3 {
            return 1
        } else if section == 4 {
            return 1
        } else if section == 5 {
            return 3
        }
        return words.count
    }
    
    override func numberOfSections() -> Int {
        return 6
    }
}
