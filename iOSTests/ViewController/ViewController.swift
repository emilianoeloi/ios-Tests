//
//  ViewController.swift
//  iOS-Tests
//
//  Created by emiliano.barbosa on 30/08/20.
//  Copyright © 2020 nEvbAr. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let item = Item(term: "Lista", definition: "Soochee")
        let viewModel = ItemViewModel(item: item)
        let view = ItemView(frame: .zero)
        
        view.backgroundColor = UIColor(rgb: 0xF2C230)
        
        viewModel.configuration(view)
        
        self.view = view
    }


}

