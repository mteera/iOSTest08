//
//  AttendeeSummaryCell.swift
//  LBTAComponent
//
//  Created by Chace Teera on 26/10/2017.
//  Copyright © 2017 chaceteera. All rights reserved.
//

import LBTAComponents

class AttendeeSummaryCell: DatasourceCell {
    
    
    let summaryLabel: UILabel = {
        let label = UILabel()
        label.text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
        label.font = UIFont.systemFont(ofSize: 14)
        label.numberOfLines = 0
        return label
    }()
    override func setupViews() {
        super.setupViews()
        backgroundColor = UIColor.white
        separatorLineView.isHidden = false
        addSubview(summaryLabel)
        summaryLabel.anchor(self.topAnchor, left: self.leftAnchor, bottom: nil, right: self.rightAnchor, topConstant: 12, leftConstant: 12, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        
    }
}

extension UIView {
    
    func roundCorners(_ corners: UIRectCorner, radius: CGFloat) {
        let path = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        self.layer.mask = mask
    }
    
}
