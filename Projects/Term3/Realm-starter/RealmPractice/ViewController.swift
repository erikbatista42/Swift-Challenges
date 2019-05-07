//
//  ViewController.swift
//  RealmPractice
//
//  Created by Adriana González Martínez on 5/2/19.
//  Copyright © 2019 Adriana González Martínez. All rights reserved.
//

import UIKit
import RealmSwift

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let store = BookStore()
        let realm = try! Realm()
        store.realm = realm
        
        
        // Create
        let grandBook = store.createBook("A Game of Thrones (A Song of Ice and Fire #1)", author: "George R. R. Martin", year: 1997)
        
        // Save
        let save = store.saveBook(grandBook)
        
        // Find
        let find = store.findBooksByTitle("A Game of Thrones (A Song of Ice and Fire #1)")
    }


}

