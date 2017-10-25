//
//  SummaryCell.swift
//  LBTAComponent
//
//  Created by Chace Teera on 25/10/2017.
//  Copyright © 2017 chaceteera. All rights reserved.
//

import LBTAComponents

class SummaryCell: DatasourceCell {
    
    
    let summaryLabel: UILabel = {
        let label = UILabel()
        label.text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip."
        label.font = UIFont.systemFont(ofSize: 14)
        label.numberOfLines = 0
        return label
    }()
    override func setupViews() {
        super.setupViews()
        addSubview(summaryLabel)
        summaryLabel.anchor(self.topAnchor, left: self.leftAnchor, bottom: nil, right: self.rightAnchor, topConstant: 12, leftConstant: 12, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        
    }
}
