//
//  HomeDatasourceController.swift
//  LBTAComponent
//
//  Created by Chace Teera on 22/10/2017.
//  Copyright © 2017 chaceteera. All rights reserved.
//

import LBTAComponents

class HomedataourceController: DatasourceController {
    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Call the data source
        let homeDatasource = HomeDatasource()
        self.datasource = homeDatasource
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    override func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        if indexPath.section == 1 {
            // Width of the view minus any content or margins.
            let approxWidthOfSummaryText = view.frame.width - 12
            // How tall the text can go till.
            let size = CGSize(width: approxWidthOfSummaryText, height: 1000)
            // The font size used in the datasource.
            let attributes = [NSFontAttributeName: UIFont.systemFont(ofSize: 14)]
            // Calculating all of the properties to make the estimateFrame.
            let estimateFrame = NSString(string: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip").boundingRect(with: size, options: .usesLineFragmentOrigin, attributes: attributes, context: nil)
            
            // Returns the frame + any margins seperating it.
            return CGSize(width: view.frame.width, height: estimateFrame.height + 24)
        } else if indexPath.section == 2 {
            return CGSize(width: view.frame.width, height: 80)
        } else if indexPath.section == 3 {
            return CGSize(width: view.frame.width, height: 80)
        }
        return CGSize(width: view.frame.width, height: 60)
    }
    // Header
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        if section == 1 {
            return .zero
        } else if section == 2 {
            return .zero
        } else if section == 3 {
            return .zero
        }
        return CGSize(width: view.frame.width, height: 124)
    }

}

