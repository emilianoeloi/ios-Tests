//
//  CardViewModel.swift
//  iOSTests
//
//  Created by emiliano.barbosa on 12/10/20.
//  Copyright © 2020 nEvbAr. All rights reserved.
//

import UIKit

typealias CompletionHandler = (() -> Void)

class DynamicValue<T> {
    var value: T {
        didSet {
            self.notify()
        }
    }
    
    private var observers = [String: CompletionHandler]()
    
    init(_ value: T) {
        self.value = value
    }
    
    public func addObserver(_ observer: NSObject, completionHandler: @escaping CompletionHandler) {
        observers[observer.description] = completionHandler
    }

    public func addAndNotify(observer: NSObject, completionHandler: @escaping CompletionHandler) {
        self.addObserver(observer, completionHandler: completionHandler)
        self.notify()
    }

    private func notify() {
        observers.forEach({ $0.value() })
    }

    deinit {
        observers.removeAll()
    }
    
}

class GenericDataSource<T> : NSObject {
    var data: DynamicValue<[T]> = DynamicValue([])
}

struct UserViewModel {
    weak var dataSource : GenericDataSource<User>?
    
    init(dataSource : GenericDataSource<User>?) {
        self.dataSource = dataSource
    }
    
    func fetchUsers() {
        DispatchQueue.main.async {
            let users: [User] = [
                User(id: 1, name: "Emiliano", age: 39, match: false, phrase: "a", photo: "b"),
                User(id: 1, name: "Rhyana", age: 35, match: false, phrase: "a", photo: "b")
            ]
            self.dataSource?.data.value = users
        }
    }
    
}
