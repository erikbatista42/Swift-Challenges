//
//  AddController.swift
//  Trip planner
//
//  Created by luxury on 5/9/19.
//  Copyright © 2019 luxury. All rights reserved.
//

import Foundation
import UIKit
import CoreData

class AddController: UIViewController {
    
    var managedObjectContext: NSManagedObjectContext!
    var trip: Trip?
    
    @IBAction func cancelButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func Done(_ sender: Any) {
        if textField.text?.isEmpty == false {
            let trips = NSEntityDescription.insertNewObject(forEntityName: "Trip", into: managedObjectContext) as! Trip
            trips.tripName = textField.text!
            trips.hasWayPoint = false
            
            print("""

                    trip: \(trips.tripName) \(trips.hasWayPoint)

                """)
            
            managedObjectContext.saveChanges()
            
//            dismiss(animated: true, completion: nil)
            self.navigationController?.popToRootViewController(animated: true)
        }
        else {
            let alertController = UIAlertController(title: "Whoops!", message: "Text field is empty. Make sure to type something!", preferredStyle: .alert)
            
            let okButton = UIAlertAction(title: "Ok", style: .default, handler: nil)
            
            alertController.addAction(okButton)
            
            self.present(alertController, animated: true, completion: nil)
            
        }
    }
    
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        self.view.backgroundColor = .blue
    }
    
    
    
    func saveItem(itemToSave: String) {
        
//        let managedContext = CoreDataManager.sharedManager.persistentContainer.viewContext
        
//        // create entity
//        let entity = NSEntityDescription.entity(forEntityName: "Trip", in: managedContext)
//
//        // create item
//        let item = NSManagedObject(entity: entity!, insertInto: managedContext)
//        item.setValue(itemToSave, forKey: "tripName")
//        // save
//        do {
//            try managedContext.save()
//            listItems.append(item)
//        } catch {
//            print(error.localizedDescription)
//        }
    }
}
