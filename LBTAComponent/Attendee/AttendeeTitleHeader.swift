//
//  AttendeeTitleHeader.swift
//  LBTAComponent
//
//  Created by Chace Teera on 26/10/2017.
//  Copyright © 2017 chaceteera. All rights reserved.
//

import LBTAComponents


class AttendeeTitleHeaderCell: DatasourceCell {
    
    let profileImageView: UIImageView = {
        let image = UIImageView()
        image.layer.frame = CGRect(x: 0, y: 0, width: 20, height: 20)
        image.image = UIImage(named: "unlink")
        return image
    }()
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "Links"
        label.font = UIFont.systemFont(ofSize: 17)
        return label
    }()
    
    override func setupViews() {
        super.setupViews()
        backgroundColor = UIColor.white
        addSubview(profileImageView)
        addSubview(nameLabel)
        
        profileImageView.anchor(self.topAnchor, left: self.leftAnchor, bottom: nil, right: nil, topConstant: 12, leftConstant: 12, bottomConstant: 0, rightConstant: 0, widthConstant: 20, heightConstant: 20)
        
        nameLabel.anchor(profileImageView.topAnchor, left: profileImageView.rightAnchor, bottom: nil, right: self.rightAnchor , topConstant: 0, leftConstant: 8, bottomConstant: 0, rightConstant: 12, widthConstant: 0, heightConstant: 20)
        
    }
}

