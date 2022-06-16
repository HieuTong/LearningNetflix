//
//  UICollectionViewCell+Extensions.swift
//  Coinhako
//
//  Created by Diep Bao Tuan on 08/12/2021.
//  Copyright © 2021 Coinhako. All rights reserved.
//

import UIKit

extension UICollectionViewCell {
    /// Returns the String describing self.
    static func identifier() -> String {
        String(describing: self)
    }

    /// Returns the UINib with nibName matching the cell's identifier.
    static func nib() -> UINib {
        UINib(nibName: identifier(), bundle: nil)
    }
}
