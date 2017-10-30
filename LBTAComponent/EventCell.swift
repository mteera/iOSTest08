//
//  EventCell.swift
//  LBTAComponent
//
//  Created by Chace Teera on 25/10/2017.
//  Copyright © 2017 chaceteera. All rights reserved.
//

import LBTAComponents


class EventCell: DatasourceCell {
    
    let eventBriteButton: UIButton = {
        let button = UIButton()
        button.setTitle("Buy a ticket", for: .normal)
        button.titleLabel?.textColor = UIColor.white
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 15)

        button.isEnabled = true
        button.layer.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        button.layer.borderWidth = 2
        button.layer.borderColor = UIColor.white.cgColor
        button.layer.cornerRadius = 5
        button.showsTouchWhenHighlighted = true
        return button
    }()
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "January Event"
        label.textColor = UIColor.white
        label.font = UIFont.boldSystemFont(ofSize: 22)
        return label
    }()
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "25/01/2018"
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
        addSubview(eventBriteButton)
        
        profileImageView.anchor(topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 200, heightConstant: 200)
        
        titleLabel.anchor(self.topAnchor, left: self.leftAnchor, bottom: nil, right: nil, topConstant: 120, leftConstant: 12, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        
        nameLabel.anchor(titleLabel.bottomAnchor, left: titleLabel.leftAnchor, bottom: nil, right: titleLabel.rightAnchor, topConstant: 8, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 20)
        
        eventBriteButton.anchor(self.topAnchor, left: nil, bottom: nil, right: self.rightAnchor, topConstant: 120, leftConstant: 0, bottomConstant: 0, rightConstant: 8, widthConstant: 100, heightConstant: 50)
        
        eventBriteButton.addTarget(self, action: #selector(goToSite), for: UIControlEvents.touchUpInside)
    }
    
    
    // Replace url string with Firebase tring for the event (will need to fetch or send data to the controller)
    func goToSite() {
        guard let url = URL(string: "https://www.eventbrite.co.uk/e/open-sauce-january-25th-tickets-36540754380") else {
            return //be safe
        }
        if #available(iOS 10.0, *) {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        } else {
            UIApplication.shared.openURL(url)
        }
    }
}
