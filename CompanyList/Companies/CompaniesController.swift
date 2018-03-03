//
//  ViewController.swift
//  CompanyList
//
//  Created by Jonathan Kim on 2/15/18.
//  Copyright © 2018 Jonathan Kim. All rights reserved.
//

import UIKit
import CoreData

class CompaniesController: UITableViewController {

    var companies = [Company]()

    override func viewDidLoad() {
        super.viewDidLoad()

        companies = CoreDataManager.shared.fetchCompanies()

        view.backgroundColor = .white
        navigationItem.title = "Companies"

        tableView.backgroundColor = .darkBlue
        tableView.tableFooterView = UIView()
        tableView.register(CompanyCell.self, forCellReuseIdentifier: "cellId")
        tableView.separatorColor = .white

        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Reset", style: .plain, target: self, action: #selector(handleReset))
        setupPlusButtonInNavBar(selector: #selector(handleAddCompany))
    }

    @objc private func handleReset() {
        CoreDataManager.shared.resetCompanies {
            var indexPathsToRemove = [IndexPath]()
            for (index, _) in companies.enumerated() {
                let indexPath = IndexPath(row: index, section: 0)
                indexPathsToRemove.append(indexPath)
            }

            companies.removeAll()
            tableView.deleteRows(at: indexPathsToRemove, with: .left)
        }
    }

    @objc func handleAddCompany() {
        let createCompanyController = CreateCompanyController()
        let navController = CustomNavigationController(rootViewController: createCompanyController)

        createCompanyController.delegate = self

        present(navController, animated: true, completion: nil)
    }
}

