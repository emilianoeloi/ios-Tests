//
//  ItemView.swift
//  iOS-Tests
//
//  Created by emiliano.barbosa on 30/08/20.
//  Copyright © 2020 nEvbAr. All rights reserved.
//

import Foundation
import UIKit

public class ItemView: UIView {
    var termLabel: UILabel
    var definitionLabel: UILabel
    
    var redView: UIView?
    var greenView: UIView?
    var blueView: UIView?
    
    var ummView: UIView?
    var awdView: UIView?
    var valsparPaintView: UIView?
    
    var horizontalStackView: UIStackView?
    var stackView: UIStackView?
    
    
    public override init(frame: CGRect = .zero) {
        
        self.termLabel = UILabel(frame: .zero).with {
            $0.translatesAutoresizingMaskIntoConstraints = false
        }
        
        self.definitionLabel = UILabel(frame: .zero).with {
            $0.translatesAutoresizingMaskIntoConstraints = false
        }
        
        self.redView = UIView(frame: .zero).with {
            $0.translatesAutoresizingMaskIntoConstraints = false
            $0.backgroundColor = UIColor(hex: "#990213ff")
        }
        
        self.ummView = UIView(frame: .zero).with {
            $0.translatesAutoresizingMaskIntoConstraints = false
            $0.backgroundColor = UIColor(hex: "#260101ff")
        }
        
        self.awdView = UIView(frame: .zero).with {
            $0.translatesAutoresizingMaskIntoConstraints = false
            $0.backgroundColor = UIColor(hex: "#590202ff")
        }
        
        self.valsparPaintView = UIView(frame: .zero).with {
            $0.translatesAutoresizingMaskIntoConstraints = false
            $0.backgroundColor = UIColor(hex: "#735645ff")
        }
        
        self.greenView = UIView(frame: .zero).with {
            $0.translatesAutoresizingMaskIntoConstraints = false
            $0.backgroundColor = UIColor(hex: "#324225ff")
        }
        
        self.blueView = UIView(frame: .zero).with {
            $0.translatesAutoresizingMaskIntoConstraints = false
            $0.backgroundColor = UIColor(hex: "#2C3359ff")
        }
        
        self.horizontalStackView = UIStackView(arrangedSubviews: [ummView!, awdView!]).with {
            $0.translatesAutoresizingMaskIntoConstraints = false
            $0.distribution = .fillEqually
            $0.axis = .horizontal
        }
        
        self.stackView = UIStackView(arrangedSubviews: [horizontalStackView!, valsparPaintView!]).with {
            $0.translatesAutoresizingMaskIntoConstraints = false
            $0.distribution = .fillEqually
            $0.axis = .vertical
        }
        
        super.init(frame: frame)
        
        setupView()
    }
    
    
    public required init?(coder: NSCoder) {
        fatalError("is not support")
    }
}

extension ItemView: CodeView {
    func buildViewHierarchy() {
        addSubview(termLabel)
        addSubview(definitionLabel)
        
        addSubview(redView!)
        
        redView?.addSubview(stackView!)
        
        addSubview(greenView!)
        addSubview(blueView!)
    }
    
    func setupConstraints() {
        
        termLabel.fill(
            top: safeAreaLayoutGuide.topAnchor,
            right: nil,
            bottom: nil,
            left: safeAreaLayoutGuide.leftAnchor,
            size: CGSize(width: 0, height: 25)
        )
        
        definitionLabel.fill(
            top: termLabel.bottomAnchor,
            right: safeAreaLayoutGuide.rightAnchor,
            bottom: nil,
            left: safeAreaLayoutGuide.leftAnchor,
            size: CGSize(width: 0, height: 25)
        )
                        
        redView?.fill(
            top: definitionLabel.bottomAnchor,
            right: safeAreaLayoutGuide.rightAnchor,
            bottom: safeAreaLayoutGuide.bottomAnchor,
            left: safeAreaLayoutGuide.leftAnchor,
            padding: UIEdgeInsets(top: 0, left: 0, bottom: 200, right: 0)
        )
        
        stackView?.fill(
            top: redView!.topAnchor,
            right: redView!.rightAnchor,
            bottom: redView!.bottomAnchor,
            left: redView!.leftAnchor,
            padding: UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        )
        
        greenView?.fill(
            top: redView!.bottomAnchor,
            right: safeAreaLayoutGuide.rightAnchor,
            bottom: nil,
            left: nil,
            size: CGSize(width: 100, height: 100)
        )
        
        blueView?.fillCenterSubview(
            top: greenView!.bottomAnchor,
            centerX: centerXAnchor,
            size: CGSize(width: 100, height: 100)
        )
    }
    
    func setupAdditionalConfigurations() {
        
    }
}
