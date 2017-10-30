//
//  HeaderCell.swift
//  LBTAComponent
//
//  Created by Chace Teera on 25/10/2017.
//  Copyright © 2017 chaceteera. All rights reserved.
//

import LBTAComponents


class HeaderCell: DatasourceCell, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    let backgroundImageView: UIImageView = {
        let image = UIImageView()
        image.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        image.image = UIImage(named: "john-doe")
        image.contentMode = .scaleAspectFill
        return image
    }()
    
    let blurView: UIView = {
        let blurEffectView = UIBlurEffect(style: UIBlurEffectStyle.dark)
        let blur = UIVisualEffectView(effect: blurEffectView)
        blur.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        blur.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        return blur
    }()
    
    let profileImageView: UIImageView = {
        let image = UIImageView()
        image.layer.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        image.layer.cornerRadius = image.layer.frame.height/2
        image.layer.borderWidth = 3
        image.layer.borderColor = UIColor.white.cgColor
        image.image = UIImage(named: "john-doe")
        image.clipsToBounds = true
        return image
    }()
    
    let chooseImageButton: UIButton = {
        let button = UIButton()
        button.layer.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        button.layer.cornerRadius = button.layer.frame.height/2
        button.clipsToBounds = true
        return button
    }()
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "John Doe"
        label.textColor = UIColor.white
        label.font = UIFont.boldSystemFont(ofSize: 17)
        return label
    }()
    
    let companyLabel: UILabel = {
        let label = UILabel()
        label.text = "TechWhizz"
        label.textColor = UIColor.white
        label.font = UIFont.systemFont(ofSize: 15)
        return label
    }()
    
    let headlineLabel: UILabel = {
        let label = UILabel()
        label.text = "CEO"
        label.textColor = UIColor.beepBlue
        label.font = UIFont.boldSystemFont(ofSize: 12)
        return label
    }()
    
    override func setupViews() {
        super.setupViews()
        addSubview(backgroundImageView)
        addSubview(blurView)
        addSubview(profileImageView)
        addSubview(chooseImageButton)
        addSubview(nameLabel)
        addSubview(companyLabel)
        addSubview(headlineLabel)
        
        backgroundImageView.anchor(self.topAnchor, left: self.leftAnchor, bottom: self.bottomAnchor, right: self.rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 200, heightConstant: 200)
        
        blurView.anchor(self.topAnchor, left: self.leftAnchor, bottom: self.bottomAnchor, right: self.rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 200, heightConstant: 200)
        
        chooseImageButton.anchor(self.topAnchor, left: self.leftAnchor, bottom: nil, right: nil, topConstant: 12, leftConstant: 12, bottomConstant: 0, rightConstant: 0, widthConstant: 100, heightConstant: 100)
        
        profileImageView.anchor(self.topAnchor, left: self.leftAnchor, bottom: nil, right: nil, topConstant: 12, leftConstant: 12, bottomConstant: 0, rightConstant: 0, widthConstant: 100, heightConstant: 100)
        
        nameLabel.anchor(self.topAnchor, left: profileImageView.rightAnchor, bottom: nil, right: nil, topConstant: 24, leftConstant: 8, bottomConstant: 0, rightConstant: 12, widthConstant: 0, heightConstant: 20)
        
        companyLabel.anchor(nameLabel.bottomAnchor, left: nameLabel.leftAnchor, bottom: nil, right: nameLabel.rightAnchor, topConstant: 8, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 20)
        
        headlineLabel.anchor(companyLabel.bottomAnchor, left: companyLabel.leftAnchor, bottom: nil, right: companyLabel.rightAnchor, topConstant: 8, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 20)

        
        
        
        chooseImageButton.addTarget(self, action: #selector(chooseImage), for: UIControlEvents.touchUpInside)
    }
    
    func chooseImage(sender: UIButton) {
        
        let imagePickerController = UIImagePickerController()
        imagePickerController.delegate = self
        
        
        print("Choose image")
        
        let actionSheet = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        actionSheet.addAction(UIAlertAction(title: "Take a photo", style: .default, handler: { (action:UIAlertAction) in
            imagePickerController.sourceType = .camera
            
            UIApplication.shared.keyWindow?.rootViewController?.present(imagePickerController, animated: true, completion: nil)
            
        }))
        actionSheet.addAction(UIAlertAction(title: "Select from gallery", style: .default, handler: { (action:UIAlertAction) in
            imagePickerController.sourceType = .photoLibrary
            UIApplication.shared.keyWindow?.rootViewController?.present(imagePickerController, animated: true, completion: nil)
            
        }))
        actionSheet.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        
         UIApplication.shared.keyWindow?.rootViewController?.present(actionSheet, animated: true, completion: nil)
       }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        let image = info[UIImagePickerControllerOriginalImage] as! UIImage
        
        profileImageView.image = image
        picker.dismiss(animated: true, completion: nil)
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true, completion: nil)
    }
    
    
}
