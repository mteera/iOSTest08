//
//  AttendeeLinksCell.swift
//  LBTAComponent
//
//  Created by Chace Teera on 26/10/2017.
//  Copyright © 2017 chaceteera. All rights reserved.
//

import LBTAComponents

class AttendeeLinksCell: DatasourceCell {
    
    let profileImageView: UIImageView = {
        let image = UIImageView()
        image.layer.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
        image.layer.cornerRadius = image.layer.frame.height/2
        image.image = UIImage(named: "social-linkedin-circular-button")
        image.clipsToBounds = true
        return image
    }()
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "https://www.linkedin.com/feed/"
        label.font = UIFont.systemFont(ofSize: 14)
        return label
    }()
    
    override func setupViews() {
        super.setupViews()
        backgroundColor = UIColor.white
        addSubview(profileImageView)
        addSubview(nameLabel)
        
        profileImageView.anchor(self.topAnchor, left: self.leftAnchor, bottom: nil, right: nil, topConstant: 12, leftConstant: 12, bottomConstant: 0, rightConstant: 0, widthConstant: 50, heightConstant: 50)
        
        nameLabel.anchor(profileImageView.topAnchor, left: profileImageView.rightAnchor, bottom: nil, right: self.rightAnchor , topConstant: 12, leftConstant: 8, bottomConstant: 0, rightConstant: 12, widthConstant: 0, heightConstant: 20)
        
    }
}
