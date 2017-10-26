//
//  AttendeeIndustryCell.swift
//  LBTAComponent
//
//  Created by Chace Teera on 26/10/2017.
//  Copyright © 2017 chaceteera. All rights reserved.
//

import LBTAComponents


class AttendeeIndustryCell: DatasourceCell {
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "My Industry"
        label.font = UIFont.systemFont(ofSize: 22)
        return label
    }()
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "Design"
        label.font = UIFont.systemFont(ofSize: 17)
        return label
    }()
    override func setupViews() {
        super.setupViews()
        
        backgroundColor = UIColor.white
        separatorLineView.isHidden = false
        addSubview(titleLabel)
        addSubview(nameLabel)
        
        titleLabel.anchor(self.topAnchor, left: self.leftAnchor, bottom: nil, right: nil, topConstant: 12, leftConstant: 12, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        
        nameLabel.anchor(titleLabel.bottomAnchor, left: titleLabel.leftAnchor, bottom: nil, right: titleLabel.rightAnchor, topConstant: 8, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 20)
    }
}

