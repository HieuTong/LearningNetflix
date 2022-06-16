//
//  UICollectionView+Extension.swift
//  Coinhako
//
//  Created by Diep Bao Tuan on 08/12/2021.
//  Copyright © 2021 Coinhako. All rights reserved.
//

import UIKit

extension UICollectionView {
    func dequeueReusableCell<T: UICollectionViewCell>(type: T.Type, for indexPath: IndexPath) -> T {
        guard let dequeuedCell = dequeueReusableCell(withReuseIdentifier: T.identifier(), for: indexPath) as? T else {
            fatalError("need to set identifier or register your cell")
        }
        return dequeuedCell
    }

    func registerFromNib(forCellClass cellClass: UICollectionViewCell.Type) {
        register(cellClass.nib(), forCellWithReuseIdentifier: cellClass.identifier())
    }
    
//    func registerHeaderFromNib(forCellClass cellClass: UICollectionViewCell.Type) {
////        register(cellClass.nib(), forCellWithReuseIdentifier: cellClass.identifier())
//        register(cellClass.nib(), forSupplementaryViewOfKind: UICollectionElementKindSectionHeader, withReuseIdentifier: cellClass.identifier())
//    }
//    
//    func registerFooterFromNib(forCellClass cellClass: UICollectionViewCell.Type) {
////        register(cellClass.nib(), forCellWithReuseIdentifier: cellClass.identifier())
//        register(cellClass.nib(), forSupplementaryViewOfKind: UICollectionElementKindSectionFooter, withReuseIdentifier: cellClass.identifier())
//    }
}
