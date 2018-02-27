//
//  CompaniesController+CreateCompanyDelegate.swift
//  CompanyList
//
//  Created by Jonathan Kim on 2/26/18.
//  Copyright © 2018 Jonathan Kim. All rights reserved.
//

import UIKit

extension CompaniesController: CreateCompanyControllerDelegate {

    func didAddCompany(company: Company) {
        companies.append(company)
        let newIndexPath = IndexPath(row: companies.count - 1, section: 0)
        tableView.insertRows(at: [newIndexPath], with: .automatic)
    }

    func didEditCompany(company: Company) {
        guard let row = companies.index(of: company) else { return }
        let reloadIndexPath = IndexPath(row: row, section: 0)
        tableView.reloadRows(at: [reloadIndexPath], with: .middle)
    }
}
