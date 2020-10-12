//
//  ItemViewModel.swift
//  iOS-Tests
//
//  Created by emiliano.barbosa on 30/08/20.
//  Copyright © 2020 nEvbAr. All rights reserved.
//

import Foundation
import UIKit

public class ItemViewModel {
    private let item: Item
    
    init (item: Item) {
        self.item = item
    }
    
    public var term: String? {
        return item.term
    }
    
    public var definition: String? {
        return item.definition
    }
    
    public var color: String? {
        return item.color
    }
}

extension ItemViewModel {
    public func configuration(_ view: ItemView) {
        view.termLabel.text = term
        view.definitionLabel.text = definition
    }
}
