//
//  Item.swift
//  iOS-Tests
//
//  Created by emiliano.barbosa on 30/08/20.
//  Copyright © 2020 nEvbAr. All rights reserved.
//

import Foundation

public class Item {
    public var cod: String
    public var term: String?
    public var definition: String?
    public var color: String?
    
    public init(cod: String, term: String?, definition: String?) {
        self.cod = cod
        self.term = term
        self.definition = definition
    }
    
    public init(term: String?, definition: String?) {
        self.cod = UUID().uuidString
        self.term = term
        self.definition = definition
    }
    
    public init(cod: String = UUID().uuidString, term: String? = nil, definition: String? = nil, color: String? = nil) {
        self.cod = cod
        self.term = term
        self.definition = definition
        self.color = color
    }
}
