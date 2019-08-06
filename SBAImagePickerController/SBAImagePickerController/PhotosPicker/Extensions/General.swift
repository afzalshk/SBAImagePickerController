//
//  General.swift
//  SBAImagePickerController
//
//  Created by Shoaib Akhtar on 05/08/2019.
//  Copyright © 2019 ShoaibAkhtar. All rights reserved.
//

import UIKit

extension UICollectionView{
    func scrollToLastItem(position: UICollectionView.ScrollPosition = .centeredHorizontally,animated: Bool = false) {
        let lastSection =  self.numberOfSections-1
        let lastItem = self.numberOfItems(inSection: lastSection) - 1
        
        if !(lastSection < 0 || lastItem <= 0) {
            let indexPath = IndexPath(item: lastItem, section: lastSection)
            self.scrollToItem(at: indexPath, at: position, animated: animated)
            
        }
    }
    
    func scrollToTopItem(position: UICollectionView.ScrollPosition = .top,animated: Bool = false) {
        if self.numberOfSections >= 1 {
            let indexPath = IndexPath(item: 0, section: 0)
            self.scrollToItem(at: indexPath, at: position, animated: animated)
        }
    }
    
    
}
