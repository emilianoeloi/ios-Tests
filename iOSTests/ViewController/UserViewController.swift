//
//  UserViewController.swift
//  iOSTests
//
//  Created by emiliano.barbosa on 12/10/20.
//  Copyright © 2020 nEvbAr. All rights reserved.
//

import UIKit

class UserDataSource : GenericDataSource<User>, UITableViewDataSource {

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.value.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "UserCell", for: indexPath) as! UITableViewCell

//        let user = self.data.value[indexPath.row]
//        cell.name = user.name

        return cell
    }
}


class UserViewController: UIViewController {
    var tableView: UITableView = UITableView(frame: .zero).with {
        $0.translatesAutoresizingMaskIntoConstraints = false
    }
    
    let dataSource = UserDataSource()
    
    lazy var viewModel: UserViewModel = {
        let viewModel = UserViewModel(dataSource: dataSource)
        return viewModel
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "£ Exchange rate"

        self.tableView.dataSource = self.dataSource
        self.dataSource.data.addAndNotify(observer: self) { [weak self] in
            self?.tableView.reloadData()
        }

        self.viewModel.fetchUser()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
