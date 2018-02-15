//
//  ViewController.swift
//  CompanyList
//
//  Created by Jonathan Kim on 2/15/18.
//  Copyright © 2018 Jonathan Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        navigationItem.title = "Companies"
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: #imageLiteral(resourceName: "plus"), style: .plain, target: self, action: #selector(handleAddCompany))

        setupNavigationStyle()
    }

    @objc func handleAddCompany() {
        print("Add Company")
    }

    func setupNavigationStyle() {
        navigationController?.navigationBar.isTranslucent = false

        let lightRed = UIColor(red: 247/255, green: 66/255, blue: 82/255, alpha: 1)
        navigationController?.navigationBar.barTintColor = lightRed
        navigationController?.navigationBar.prefersLargeTitles = true

        navigationController?.navigationBar.largeTitleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.white]
    }
}

