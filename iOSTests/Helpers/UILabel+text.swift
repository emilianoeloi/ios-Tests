//
//  UILabel+text.swift
//  iOSTests
//
//  Created by emiliano.barbosa on 12/10/20.
//  Copyright © 2020 nEvbAr. All rights reserved.
//

import UIKit

extension UILabel {
    static func textLabel(
        _ size: CGFloat,
        textColor: UIColor = .black,
        numberOrLines: Int = 1,
        isBold: Bool = false
    ) -> UILabel {
        let label = UILabel()
        if isBold {
            label.font = UIFont.boldSystemFont(ofSize: size)
        } else {
            label.font = UIFont.systemFont(ofSize: size)
        }
        label.textColor = textColor
        label.numberOfLines = numberOrLines
        return label
    }
    
    func addShadow() {
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowRadius = 2.0
        self.layer.shadowOpacity = 0.8
        self.layer.shadowOffset = CGSize(width: 1, height: 1)
        self.layer.masksToBounds = false
    }
}
