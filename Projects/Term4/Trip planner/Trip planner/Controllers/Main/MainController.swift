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
    
    var tempTrips = ["San Jose","San Francisco","San Paulo","San Pink"]
    var itemsInWaypoints = ["blue"]
    
    @IBAction func addButton(_ sender: Any) {
        // add trip
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tripsTableView.delegate = self
        tripsTableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            self.tempTrips.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        itemsInWaypoints.popLast()
        if itemsInWaypoints.isEmpty {
            let viewWaypoints = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "viewWaypoints") as UIViewController
            self.navigationController?.pushViewController(viewWaypoints, animated: true)
        } else {
            self.navigationController?.pushViewController(EmptyWaypointsController(), animated: true)
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tempTrips.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tripsTableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath)
        let tripName = tempTrips[indexPath.row]
        cell.textLabel?.text = "Trip to \(tripName)"
        return cell
    }


}

