//
//  File.swift
//  iOSTests
//
//  Created by emiliano.barbosa on 12/10/20.
//  Copyright © 2020 nEvbAr. All rights reserved.
//

import Foundation

public class UserService {
    static let shared = UserDataSource()
    static let users: [User] = [
        User(id: 1, name: "Emiliano", age: 39, match: false, phrase: "a", photo: "b"),
        User(id: 1, name: "Rhyana", age: 35, match: false, phrase: "a", photo: "b")
    ]
    func fetchUsers() -> [User] {
        return self.users
    }
}
