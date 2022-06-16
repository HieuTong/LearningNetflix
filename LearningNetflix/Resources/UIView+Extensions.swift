//
//  UIView+Extensions.swift
//  Coinhako
//
//  Created by Diep Bao Tuan on 13/10/2021.
//  Copyright © 2021 Coinhako. All rights reserved.
//

import UIKit

extension UIView {
    func allLayoutSubviews() {
        layoutSubviews()
        subviews.forEach {
            $0.allLayoutSubviews()
        }
        layoutSubviews()
    }
    
    func createShadow(shadowRadius: CGFloat, cornerRadius: CGFloat, shadowColor: UIColor) {
        layer.masksToBounds = false
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.5
        layer.shadowOffset = CGSize(width: 1, height: 1)
        layer.shadowRadius = shadowRadius
        layer.cornerRadius = cornerRadius
        layer.shadowColor = shadowColor.cgColor
        layer.shouldRasterize = true
        layer.rasterizationScale = UIScreen.main.scale
    }
}

extension UIButton {
    func setTitleLabelForAll(_ title: String) {
        setTitle(title, for: .application)
        setTitle(title, for: .normal)
        setTitle(title, for: .disabled)
        setTitle(title, for: .selected)
        setTitle(title, for: .focused)
        setTitle(title, for: .reserved)
    }
}
