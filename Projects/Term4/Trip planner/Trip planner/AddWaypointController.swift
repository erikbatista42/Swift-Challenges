//
//  AddWaypointController.swift
//  Trip planner
//
//  Created by luxury on 5/15/19.
//  Copyright © 2019 luxury. All rights reserved.
//

import Foundation
import UIKit

class AddWaypointController: UIViewController {
    
    
    
    @IBAction func cancelButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func saveButton(_ sender: Any) {
        print("supposed to save to core data")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(123)
    }
}
