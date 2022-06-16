//
//  UIInitable+Extension.swift
//  Coinhako
//
//  Created by Diep Bao Tuan on 28/09/2021.
//  Copyright © 2021 Coinhako. All rights reserved.
//

import UIKit

extension NSObject {
    public var className: String { type(of: self).className() }
}

extension NSObject {
    public static func className() -> String {
        String(describing: self)
    }
}

protocol UIInitable {
    static func instantiate() -> Self
}

extension UIView: UIInitable { }
extension UIInitable where Self: UIView {
    static func instantiate() -> Self {
        guard Bundle.main.path(forResource: className(), ofType: "nib") != nil else { return .init() }
        return Bundle.main.loadNibNamed(className(), owner: nil)?.first as? Self ?? .init()
    }
}

extension String {
    func toInt() -> Int? {
        return Int(self)
    }
    
    func toDouble() -> Double? {
        return Double(self)
    }
}
