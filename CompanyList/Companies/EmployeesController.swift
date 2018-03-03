//
//  EmployeesController.swift
//  CompanyList
//
//  Created by Jonathan Kim on 3/3/18.
//  Copyright © 2018 Jonathan Kim. All rights reserved.
//

import UIKit

class EmployeesController: UITableViewController {

    var company: Company?

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationItem.title = company?.name
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.backgroundColor = .darkBlue

        setupPlusButtonInNavBar(selector: #selector(handleAdd))
    }

    @objc private func handleAdd() {
        let createEmployeeController = CreateEmployeeController()
        let navController = CustomNavigationController(rootViewController: createEmployeeController)
        present(navController, animated: true, completion: nil)
    }
}
