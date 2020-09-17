//
//  Extentions.swift
//  Handiwork
//
//  Created by Corey Burgin on 9/12/20.
//  Copyright © 2020 Corey Burgin. All rights reserved.
//

import UIKit


extension UIColor {
    
    
    static let blueMain = UIColor(red: 0.02, green: 0.20, blue: 0.33, alpha: 1.00)
    
    static let redMain = UIColor(red: 0.89, green: 0.27, blue: 0.32, alpha: 1.00)
    
    static let yellowMain = UIColor(red:0.98, green:0.60, blue:0.06, alpha:1.00)
    
    static let whitMain = UIColor(red: 0.95, green: 0.95, blue: 0.95, alpha: 1.00)
    
}


extension UIView {

func fillSuperview() {
    anchor(top: superview?.topAnchor, leading: superview?.leadingAnchor, bottom: superview?.bottomAnchor, trailing: superview?.trailingAnchor)
}

func anchorSize(to view: UIView) {
    widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
    heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true
}

func anchor(top: NSLayoutYAxisAnchor?, leading: NSLayoutXAxisAnchor?, bottom: NSLayoutYAxisAnchor?, trailing: NSLayoutXAxisAnchor?, padding: UIEdgeInsets = .zero, size: CGSize = .zero) {
    translatesAutoresizingMaskIntoConstraints = false
    
    if let top = top {
        topAnchor.constraint(equalTo: top, constant: padding.top).isActive = true
    }
    
    if let leading = leading {
        leadingAnchor.constraint(equalTo: leading, constant: padding.left).isActive = true
    }
    
    if let bottom = bottom {
        bottomAnchor.constraint(equalTo: bottom, constant: -padding.bottom).isActive = true
    }
    
    if let trailing = trailing {
        trailingAnchor.constraint(equalTo: trailing, constant: -padding.right).isActive = true
    }
    
    if size.width != 0 {
        widthAnchor.constraint(equalToConstant: size.width).isActive = true
    }
    
    if size.height != 0 {
        heightAnchor.constraint(equalToConstant: size.height).isActive = true
    }
}
}
