//
//  AttendeesViewController.swift
//  LBTAComponent
//
//  Created by Chace Teera on 26/10/2017.
//  Copyright © 2017 chaceteera. All rights reserved.
//

import UIKit
import LBTAComponents
import Koloda

class AttendeesDatasourceController: DatasourceController, KolodaViewDelegate, KolodaViewDataSource {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView?.backgroundColor = UIColor.babyBlue
        // Call the data source
        let attendeeDatasource = AttendeeDatasource()
        self.datasource = attendeeDatasource
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    override func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if indexPath.section == 1 {
            return CGSize(width: view.frame.width - 24, height: 50)
        } else if indexPath.section == 2 {
            // Width of the view minus any content or margins.
            let approxWidthOfSummaryText = view.frame.width - 12
            // How tall the text can go till.
            let size = CGSize(width: approxWidthOfSummaryText, height: 1000)
            // The font size used in the datasource.
            let attributes = [NSFontAttributeName: UIFont.systemFont(ofSize: 14)]
            // Calculating all of the properties to make the estimateFrame.
            let estimateFrame = NSString(string: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.").boundingRect(with: size, options: .usesLineFragmentOrigin, attributes: attributes, context: nil)
            
            // Returns the frame + any margins seperating it.
            return CGSize(width: view.frame.width - 24, height: estimateFrame.height + 24)
        } else if indexPath.section == 3 {
            return CGSize(width: view.frame.width - 24, height: 80)
        } else if indexPath.section == 4 {
            return CGSize(width: view.frame.width - 24, height: 34)
        } else if indexPath.section == 5 {
            return CGSize(width: view.frame.width - 24, height: 80)
        }
        return CGSize(width: view.frame.width - 24, height: 124)
    }
    

    
}
