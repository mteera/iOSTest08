//
//  Recipe.swift
//  LBTAComponent
//
//  Created by Chace Teera on 22/10/2017.
//  Copyright © 2017 chaceteera. All rights reserved.
//

import Foundation
import SwiftyJSON

class Recipe {
    
    var id: String?
    var title: String?
    var image: String?
    
    init(json: JSON) {
        
        self.id = json["id"].stringValue
        self.title = json["title"].stringValue
        self.image = json["image"].stringValue
    }
    
}
