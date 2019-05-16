//
//  FetchTripsController.swift
//  Trip planner
//
//  Created by luxury on 5/16/19.
//  Copyright © 2019 luxury. All rights reserved.
//

import Foundation
import UIKit
import CoreData

class FetchTripsController: NSFetchedResultsController<Trip>, NSFetchedResultsControllerDelegate {
    private let tableView: UITableView
    
    init(managedObjectContext: NSManagedObjectContext, tableView: UITableView) {
        self.tableView = tableView
        super.init(fetchRequest: Trip.fetchRequest(), managedObjectContext: managedObjectContext, sectionNameKeyPath: nil, cacheName: nil)
        self.delegate = self
        
        tryFetch()
    }
    
    func tryFetch() {
        do {
            try performFetch()
        } catch {
            print("Unresolved error: ", error.localizedDescription)
        }
    }
    
    func controllerDidChangeContent(_ controller: NSFetchedResultsController<NSFetchRequestResult>) {
        tableView.endUpdates()
    }
    
    func controller(_ controller: NSFetchedResultsController<NSFetchRequestResult>, didChange anObject: Any, at indexPath: IndexPath?, for type: NSFetchedResultsChangeType, newIndexPath: IndexPath?) {
        switch type {
        case .insert:
            guard let indexPath = newIndexPath else {return}
            tableView.insertRows(at: [indexPath], with: .automatic)
        case .delete:
            guard let indexPath = indexPath else {return}
            tableView.deleteRows(at: [indexPath], with: .automatic)
        case .update, .move:
            guard let indexPath = indexPath else {return}
            tableView.reloadRows(at: [indexPath], with: .automatic)
        }
    }
    
    func controllerWillChangeContent(_ controller: NSFetchedResultsController<NSFetchRequestResult>) {
        tableView.beginUpdates()
    }
}

