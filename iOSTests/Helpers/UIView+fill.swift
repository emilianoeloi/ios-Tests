//
//  UIView+fill.swift
//  iOSTests
//
//  Created by emiliano.barbosa on 11/10/20.
//  Copyright © 2020 nEvbAr. All rights reserved.
//

import UIKit

extension UIView {
    func fill(
        top: NSLayoutYAxisAnchor?, right: NSLayoutXAxisAnchor?,
        bottom: NSLayoutYAxisAnchor?, left: NSLayoutXAxisAnchor?,
        padding: UIEdgeInsets = .zero,
        size: CGSize = .zero
    ) {
        translatesAutoresizingMaskIntoConstraints = false
        
        if let top = top {
            topAnchor.constraint(equalTo: top, constant: padding.top).isActive = true
        }
        
        if let right = right {
            rightAnchor.constraint(equalTo: right,constant: -padding.right).isActive = true
        }
        
        if let bottom = bottom {
            bottomAnchor.constraint(equalTo: bottom, constant: -padding.bottom).isActive = true
        }
        
        if let left = left {
            leftAnchor.constraint(equalTo: left, constant: padding.left).isActive = true
        }
        
        if size.width != 0 {
            widthAnchor.constraint(equalToConstant: size.width).isActive = true
        }
        if size.height != 0 {
            heightAnchor.constraint(equalToConstant: size.height).isActive = true
        }
    }
    func fillSubview(padding: UIEdgeInsets = .zero) {
        fill(
            top: superview?.topAnchor,
            right: superview?.rightAnchor,
            bottom: superview?.bottomAnchor,
            left: superview?.leftAnchor,
            padding: padding
        )
    }
    
    func fillCenterSubview(
        top: NSLayoutYAxisAnchor? = nil,
        right: NSLayoutXAxisAnchor? = nil,
        bottom: NSLayoutYAxisAnchor? = nil,
        left: NSLayoutXAxisAnchor? = nil,
        centerX: NSLayoutXAxisAnchor? = nil,
        centerY: NSLayoutYAxisAnchor? = nil,
        size: CGSize = .zero
    ) {
        
        if let top = top {
            topAnchor.constraint(equalTo: top).isActive = true
        }
        
        if let right = right {
            rightAnchor.constraint(equalTo: right).isActive = true
        }
        
        if let bottom = bottom {
            bottomAnchor.constraint(equalTo: bottom).isActive = true
        }
        
        if let left = left {
            leftAnchor.constraint(equalTo: left).isActive = true
        }
        
        if let centerX = centerX {
            centerXAnchor.constraint(equalTo: centerX).isActive = true
        }
        if let centerY = centerY {
            centerYAnchor.constraint(equalTo: centerY).isActive = true
        }
        
        if size.width != 0 {
            widthAnchor.constraint(equalToConstant: size.width).isActive = true
        }
        if size.height != 0 {
            heightAnchor.constraint(equalToConstant: size.height).isActive = true
        }
    }
}
