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
            return CGSize(width: view.frame.width, height: 80)
        }
        return CGSize(width: view.frame.width, height: 60)
    }
    // Header
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        if section == 1 {
            return .zero
        }
        return CGSize(width: view.frame.width, height: 124)
    }
    //Footer
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForFooterInSection section: Int) -> CGSize {
        if section == 1 {
            return .zero
        }
        return CGSize(width: view.frame.width, height: 100)
    }
    

}

