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

    func fetchCompanies() -> [Company] {
        let context = persistentContainer.viewContext
        let fetchRequest = NSFetchRequest<Company>(entityName: "Company")

        do {
            let companies = try context.fetch(fetchRequest)
            return companies

        } catch let fetchErr {
            print("Failed to fetch companies: \(fetchErr)")
            return []
        }
    }

    func resetCompanies(completion:() -> ()) {
        let context = persistentContainer.viewContext
        let batchDeleteRequest = NSBatchDeleteRequest(fetchRequest: Company.fetchRequest())

        do {
            try context.execute(batchDeleteRequest)
            completion()
        } catch let deleteErr {
            print("Failed to delete object from core data \(deleteErr)")
        }
    }
}
