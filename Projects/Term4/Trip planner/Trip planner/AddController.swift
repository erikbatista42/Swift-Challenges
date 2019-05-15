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
    
    var listItems = [NSManagedObject]()
    
    @IBAction func cancelButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func Done(_ sender: Any) {
        if textField.text?.isEmpty == true {
            //pop alert
            print("text field is empty. Pop an alert")
            let alertController = UIAlertController(title: "Whoops!", message: "Text field is empty. Make sure to type something!", preferredStyle: .alert)
            let okButton = UIAlertAction(title: "Alright", style: .default, handler: nil)
            alertController.addAction(okButton)
            
            self.present(alertController, animated: true, completion: nil)
        }
        else {
            // pass whatever you typed into the main view controller
            self.saveItem(itemToSave: textField.text!)
            // then dismiss
            dismiss(animated: true, completion: nil)
        }
    }
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        self.view.backgroundColor = .blue
    }
    
    
    
    func saveItem(itemToSave: String) {
        
        let managedContext = CoreDataManager.sharedManager.persistentContainer.viewContext
        
        // create entity
        let entity = NSEntityDescription.entity(forEntityName: "Trip", in: managedContext)
        
        // create item
        let item = NSManagedObject(entity: entity!, insertInto: managedContext)
        item.setValue(itemToSave, forKey: "tripName")
        // save
        do {
            try managedContext.save()
            listItems.append(item)
        } catch {
            print(error.localizedDescription)
        }
    }
}
