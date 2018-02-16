//
//  CreateCompanyController.swift
//  CompanyList
//
//  Created by Jonathan Kim on 2/15/18.
//  Copyright © 2018 Jonathan Kim. All rights reserved.
//

import UIKit

class CreateCompanyController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .darkBlue
        navigationItem.title = "Create Company"

        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(handleCancel))
    }

    @objc func handleCancel() {
        dismiss(animated: true, completion: nil)
    }
}
