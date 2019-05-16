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
    
    @IBAction func cancelButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func Done(_ sender: Any) {
        if textField.text?.isEmpty == false {
            
            // entity
            
            guard let entity = NSEntityDescription.entity(forEntityName: "Trip", in: managedObjectContext) else { return }
            
            //            guard let trip = NSEntityDescription.insertNewObject(forEntityName: "Trip", into: managedObjectContext) as? Trip else { return }
            
            //            trip.tripName = textField.text
            
            // managed object
            let trip = NSManagedObject(entity: entity, insertInto: managedObjectContext)
            
            // save it
            trip.setValue(textField.text, forKey: "trip")
            
            print("okay")
            managedObjectContext?.saveChanges()
            
            print("Alright")
            dismiss(animated: true, completion: nil)
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
