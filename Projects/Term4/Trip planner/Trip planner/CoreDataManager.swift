//
//  Model.swift
//  Trip planner
//
//  Created by luxury on 5/9/19.
//  Copyright © 2019 luxury. All rights reserved.
//

import Foundation
import CoreData

class CoreDataManager {
    
    //This Core Data manager works as a Singleton. This means you will use the same instance throughout the project. Call its sharedManager to have access to its methods.
    
    static let sharedManager = CoreDataManager()
    private init() {}
    
    lazy var persistentContainer: NSPersistentContainer = {
        let container = NSPersistentContainer(name: "PlannedTrips")
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            
            if let error = error as NSError? {
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        return container
    }()
    
    
    func saveContext () {
        let context = CoreDataManager.sharedManager.persistentContainer.viewContext
        if context.hasChanges {
            do {
                try context.save()
            } catch {
                
                let nserror = error as NSError
                fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
            }
        }
    }
    
//    func insertTrip(tripName:String) -> Question? {
//
//        let managedContext = CoreDataManager.sharedManager.persistentContainer.viewContext
//
//        //TODO: Create a new entity & managed object and save it.
//
//        // entity
//        let entity = NSEntityDescription.entity(forEntityName: "Trip", in: managedContext)!
//
//        // managed object
//        let trip = NSManagedObject(entity: entity, insertInto: managedContext)
//
//        // save it
//        trip.setValue(tripName, forKey: "tripName")
//
//
//        //        do {
//        //            try managedContext.save()
//        //            saveContext()
//        //        } catch let error as NSError {
//        //            print(error.userInfo)
//        //        }
//        saveContext()
//        return nil
//    }
    
//    func fetchAllQuestions() -> [Question]? {
//
//        let managedContext = CoreDataManager.sharedManager.persistentContainer.viewContext
//        
//        //TODO: Create a new fetch request to return all the questions.
//        //2
//        let fetchRequest =  NSFetchRequest<NSManagedObject>(entityName: "Question")
//
//        //3
//        do {
//            let result = try managedContext.fetch(fetchRequest)
//            //            for data in result {
//            //                print(data.value(forKey: "Question") as! String)
//            //            }
//            return result as! [Question]
//        } catch let error as NSError {
//            print("Could not fetch. \(error), \(error.userInfo)")
//        }
//        return nil
//
//
//    }
//
}



