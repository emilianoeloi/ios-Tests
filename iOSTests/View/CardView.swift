//
//  ItemView.swift
//  iOS-Tests
//
//  Created by emiliano.barbosa on 30/08/20.
//  Copyright © 2020 nEvbAr. All rights reserved.
//

import Foundation
import UIKit

public class CardView: UIView {
    var viewImage: UIImageView
    var nameLabel: UILabel = .textLabel(32, textColor: .white, isBold: true)
    var ageLabel: UILabel = .textLabel(28, textColor: .white)
    var phraseLabel: UILabel = .textLabel(18, textColor: .white)
    var infoStackView: UIStackView
    var stackView: UIStackView
        
    public override init(frame: CGRect = .zero) {
        
        self.viewImage = UIImageView(frame: .zero).with {
            $0.translatesAutoresizingMaskIntoConstraints = false
            $0.backgroundColor = .green
            $0.image = UIImage(named: "photo1")
            $0.contentMode = .scaleAspectFill
            $0.clipsToBounds = true
        }
        
        nameLabel.text = "Nome Um"
        nameLabel.addShadow()
        
        ageLabel.text = "21"
        ageLabel.addShadow()
        
        phraseLabel.text = "A história da Adriana é impactante e transformadora. Impressível não mudar nossa forma de olhar para a vida depois dela."
        phraseLabel.addShadow()
        
        self.infoStackView = UIStackView(arrangedSubviews: [nameLabel, ageLabel, UIView()])
        self.infoStackView.spacing = 12
        
        self.stackView = UIStackView(arrangedSubviews: [infoStackView, phraseLabel])
        self.stackView.distribution = .fillEqually
        self.stackView.axis = .vertical
        
        super.init(frame: frame)
        
        setupView()
    }
    
    
    public required init?(coder: NSCoder) {
        fatalError("is not support")
    }
}

extension CardView: CodeView {
    func buildViewHierarchy() {
        addSubview(viewImage)
        addSubview(stackView)
    }
    
    func setupConstraints() {
        viewImage.fillSubview()
        stackView.fill(
            top: nil, right: rightAnchor, bottom: bottomAnchor, left: leftAnchor,
            padding: UIEdgeInsets(top: 0, left: 16, bottom: 16, right: 16)
        )
    }
    
    func setupAdditionalConfigurations() {
        layer.borderWidth = 0.3
        layer.borderColor = UIColor(hex: "#6D7371ff")?.cgColor
        layer.cornerRadius = 8
        clipsToBounds = true
    }
}
