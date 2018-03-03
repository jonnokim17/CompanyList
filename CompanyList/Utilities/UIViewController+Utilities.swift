//
//  UIViewController+Utilities.swift
//  CompanyList
//
//  Created by Jonathan Kim on 3/3/18.
//  Copyright © 2018 Jonathan Kim. All rights reserved.
//

import UIKit

extension UIViewController {
    func setupPlusButtonInNavBar(selector: Selector) {
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: #imageLiteral(resourceName: "plus"), style: .plain, target: self, action: selector)
    }

    func setupCancelButtonInNavBar() {
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(handleCancelModal))
    }

    @objc func handleCancelModal() {
        dismiss(animated: true, completion: nil)
    }
}
