//
//  SoocheeCrud.swift
//  iOS-Tests
//
//  Created by emiliano.barbosa on 30/08/20.
//  Copyright © 2020 nEvbAr. All rights reserved.
//

import Foundation

public protocol SoocheeCrud {
    func createItem(item: Item) -> Bool
    func request(cod: String) -> Item
    func update(item: Item) -> Item
    func delete(cod: String) -> Bool
}

public extension SoocheeCrud {

    func createItem(item: Item) -> Bool {
        return true
    }
    
    func request(cod: String) -> Item {
        return Item(cod: "1", term: "a", definition: "b")
    }
    
    func update(item: Item) -> Item {
        return Item(cod: "2", term: "b", definition: "")
    }
    
    func delete(cod: String) -> Bool {
        return true
    }
}
