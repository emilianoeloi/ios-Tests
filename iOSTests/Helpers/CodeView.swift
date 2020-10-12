//
//  CodeView.swift
//  iOS-Tests
//
//  Created by emiliano.barbosa on 30/08/20.
//  Copyright © 2020 nEvbAr. All rights reserved.
//

import Foundation

protocol CodeView {
    func buildViewHierarchy()
    func setupConstraints()
    func setupAdditionalConfigurations()
    func setupView()
}

extension CodeView {
    func setupView() {
        buildViewHierarchy()
        setupConstraints()
        setupAdditionalConfigurations()
    }
}
