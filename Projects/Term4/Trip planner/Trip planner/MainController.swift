//
//  ViewController.swift
//  Trip planner
//
//  Created by luxury on 4/29/19.
//  Copyright © 2019 luxury. All rights reserved.
//

import UIKit
import CoreData

class MainController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    @IBOutlet weak var tripsTableView: UITableView!
    var managedContext = NSManagedObjectContext()
    
    @IBAction func addButton(_ sender: Any) {
        // add trip
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tripsTableView.delegate = self
        tripsTableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.navigationController?.pushViewController(Waypoints(), animated: true)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tripsTableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath)
        let tripName = "San Jose"
        cell.textLabel?.text = "Trip to \(tripName)"
        return cell
    }


}

