//
//  CoreDataStack.swift
//  Trip planner
//
//  Created by luxury on 5/15/19.
//  Copyright © 2019 luxury. All rights reserved.
//

import Foundation
import CoreData

class CoreDataStack {
    lazy var managedObjectContext: NSManagedObjectContext = {
        let container = self.persistentContainer
        return container.viewContext
    }()
    
    private lazy var persistentContainer: NSPersistentContainer = {
        let container = NSPersistentContainer(name: "PlannedTrips")
        container.loadPersistentStores() { storeDescription, error in
            if let error = error as NSError? {
                fatalError("Unresolved error: \(error), \(error.userInfo)")
            }
        }
        return container
    }()
}

extension NSManagedObjectContext {
    func saveChanges() {
        if self.hasChanges {
            do {
                print("Saving...")
                try save()
            } catch {
                fatalError("Error: \(error.localizedDescription)")
            }
        }
    }
}
