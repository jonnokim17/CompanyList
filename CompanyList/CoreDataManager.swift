//
//  CoreDataManager.swift
//  CompanyList
//
//  Created by Jonathan Kim on 2/16/18.
//  Copyright © 2018 Jonathan Kim. All rights reserved.
//

import CoreData

struct CoreDataManager {
    static let shared = CoreDataManager()
    let persistentContainer: NSPersistentContainer = {
        let container = NSPersistentContainer(name: "CompanyListModels")
        container.loadPersistentStores { (storeDescription, err) in
            if let err = err {
                fatalError("Loading of store failed \(err)")
            }
        }
        return container
    }()
}
