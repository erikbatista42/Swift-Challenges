//
//  ViewWaypointsController.swift
//  Trip planner
//
//  Created by luxury on 5/15/19.
//  Copyright © 2019 luxury. All rights reserved.
//

import Foundation
import UIKit
import CoreData

class WaypointsController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var trip: Trip!
    var waypoint: Waypoint!
    
    var managedObjectContext: NSManagedObjectContext!
    
    @IBOutlet weak var tripNameLabel: UILabel!
    @IBOutlet weak var viewWaypointsTableView: UITableView!
    
    @IBAction func addMoreWaypointsButton(_ sender: Any) {
        let addWaypoint = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "add") as UIViewController
        self.navigationController?.present(addWaypoint, animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tripNameLabel.text = trip.tripName
        viewWaypointsTableView.delegate = self
        viewWaypointsTableView.dataSource = self
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addTapped))
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = viewWaypointsTableView.dequeueReusableCell(withIdentifier: "viewWaypointsTableViewCell", for: indexPath)
        cell.textLabel?.text = "dummy data"
        return cell
    }
    
    @objc func addTapped() {
        let addWaypoint = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "add") as UIViewController
        self.navigationController?.present(addWaypoint, animated: true, completion: nil)
    }
}
