//
//  SkillsCell.swift
//  LBTAComponent
//
//  Created by Chace Teera on 25/10/2017.
//  Copyright © 2017 chaceteera. All rights reserved.
//

import LBTAComponents

class InterestsCell: DatasourceCell {
    
    override var datasourceItem: Any? {
        didSet {
            nameLabel.text = datasourceItem as? String
        }
    }
    
    let checkCircle: UIView = {
        let circle = UIView()
        circle.backgroundColor = UIColor.foodBulbGreen
        circle.layer.frame = CGRect(x: 0, y: 0, width: 20, height: 20)
        circle.layer.cornerRadius = circle.layer.frame.height/2
        circle.clipsToBounds = true
        return circle
    }()
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "TEST TEST TEST"
        return label
    }()
    
    override func setupViews() {
        super.setupViews()
        separatorLineView.isHidden = false
        separatorLineView.backgroundColor = UIColor(r: 220, g: 220, b: 220)
        addSubview(checkCircle)
        addSubview(nameLabel)
        
        checkCircle.anchor(topAnchor, left: leftAnchor, bottom: nil, right: nil, topConstant: 12, leftConstant: 12, bottomConstant: 12, rightConstant: 0, widthConstant: 20, heightConstant: 20)
        
        nameLabel.anchor(checkCircle.topAnchor, left: checkCircle.rightAnchor, bottom: nil, right: self.rightAnchor , topConstant: 0, leftConstant: 8, bottomConstant: 0, rightConstant: 12, widthConstant: 0, heightConstant: 20)
        
    }
}

