//
//  HomedataourceController.swift
//  LBTAComponent
//
//  Created by Chace Teera on 21/10/2017.
//  Copyright © 2017 chaceteera. All rights reserved.
//

import LBTAComponents
import Alamofire

class HeaderCell: DatasourceCell {
    
    let recipeImage: UIImageView = {
        let image = UIImageView()
        image.layer.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        image.contentMode = .scaleToFill
        image.clipsToBounds = true
        image.image = UIImage(named: "Weeping-Tiger")
        return image
    }()
    
    
    override func setupViews() {
        super.setupViews()
        addSubview(recipeImage)
        recipeImage.anchor(topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        
    }
}

class FooterCell: DatasourceCell {
    override func setupViews() {
        super.setupViews()
        backgroundColor = .yellow
        
    }
}





