//
//  EventCell.swift
//  LBTAComponent
//
//  Created by Chace Teera on 25/10/2017.
//  Copyright © 2017 chaceteera. All rights reserved.
//

import LBTAComponents


class EventCell: DatasourceCell {
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "January Event"
        label.textColor = UIColor.white
        label.font = UIFont.boldSystemFont(ofSize: 22)
        return label
    }()
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "07/01/2018"
        label.textColor = UIColor.white
        label.font = UIFont.systemFont(ofSize: 17)
        return label
    }()
    
    let profileImageView: UIImageView = {
        let image = UIImageView()
        image.layer.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        image.image = UIImage(named: "Repton_Bar_Stools_and_Chairs_by_DeFrae_Contract_Furniture_at_Canvas_Bournemouth")
        return image
    }()
    
    let overlayView: UIView = {
        let overlay = UIView()
        overlay.backgroundColor = UIColor(r: 0, g: 0, b: 0, a: 0.5)
        return overlay
    }()
    
    override func setupViews() {
        super.setupViews()
        separatorLineView.isHidden = false
        
        addSubview(profileImageView)
        addSubview(overlayView)
        addSubview(titleLabel)
        addSubview(nameLabel)
        
        profileImageView.anchor(topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 200, heightConstant: 200)
        
        titleLabel.anchor(self.topAnchor, left: self.leftAnchor, bottom: nil, right: nil, topConstant: 120, leftConstant: 12, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        
        nameLabel.anchor(titleLabel.bottomAnchor, left: titleLabel.leftAnchor, bottom: nil, right: titleLabel.rightAnchor, topConstant: 8, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 20)
        
    }
}
