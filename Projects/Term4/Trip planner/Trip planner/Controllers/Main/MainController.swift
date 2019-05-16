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

    let managedObjectContext = CoreDataStack().managedObjectContext
    var trip: Trip!
    
    @IBOutlet weak var tripsTableView: UITableView!
    
    var tempTrips = ["San Jose","San Francisco","San Paulo","San Pink"]
    var itemsInWaypoints = ["blue"]
    

    @IBAction func addButton(_ sender: UIBarButtonItem) {
        let addController = AddController()
        addController.performSegue(withIdentifier: "addControllerId", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let addController = segue.destination as! AddController
            addController.managedObjectContext = self.managedObjectContext
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tripsTableView.delegate = self
        tripsTableView.dataSource = self
        guard let trip = self.trip else { return }
        self.navigationItem.title = "Trip to:\(trip.tripName)"
        
        
    }
    
    lazy var fetchedResultsController: FetchTripsController = {
        return FetchTripsController(managedObjectContext: self.managedObjectContext, tableView: self.tripsTableView)
    }()
    
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            let trip = fetchedResultsController.object(at: indexPath)
            managedObjectContext.delete(trip)
            managedObjectContext.saveChanges()
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let waypointsController = WaypointsController()
        let emptyWaypointsController = EmptyWaypointsController()
        let trip = fetchedResultsController.object(at: indexPath)
        
        if trip.hasWayPoint == true {
            waypointsController.trip = trip
            waypointsController.managedObjectContext = self.managedObjectContext
            let viewWaypoints = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "viewWaypoints") as UIViewController
            self.navigationController?.pushViewController(viewWaypoints, animated: true)
        } else {
            emptyWaypointsController.trip = trip
            emptyWaypointsController.managedObjectContext = self.managedObjectContext
            let emptyController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "viewWaypoints") as UIViewController
            
            self.navigationController?.pushViewController(emptyController, animated: true)
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return fetchedResultsController.sections?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let section = fetchedResultsController.sections?[section] else {return 0}
        return section.numberOfObjects
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tripsTableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath)
        
        let trip = fetchedResultsController.object(at: indexPath)
        cell.textLabel?.text = "Trip to \(trip.tripName)"
        return cell
    }


}

