//
//  AttendeeDatasource.swift
//  LBTAComponent
//
//  Created by Chace Teera on 26/10/2017.
//  Copyright © 2017 chaceteera. All rights reserved.
//

import LBTAComponents
import TRON
import SwiftyJSON


class AttendeeDatasource: Datasource {
    
    // Define the object to populate table
    let skills = ["UI Design", "Graphic Design"]
    

    override func cellClasses() -> [DatasourceCell.Type] {
        return [AttendeeHeaderCell.self, AttendeeSkillsCell.self, AttendeeSummaryCell.self, AttendeeIndustryCell.self, AttendeeTitleHeaderCell.self, AttendeeLinksCell.self]
    }
    
    
    
    // Assign the items to an indexPath for the table
    override func item(_ indexPath: IndexPath) -> Any? {
        return skills[indexPath.item]
    }
    
    // Populate the number of sections with the number of items in object
    override func numberOfItems(_ section: Int) -> Int {
        if section == 1 {
            return skills.count
        }
       return 1
    }
    
    override func numberOfSections() -> Int {
        return 6
        
    }
    
}

