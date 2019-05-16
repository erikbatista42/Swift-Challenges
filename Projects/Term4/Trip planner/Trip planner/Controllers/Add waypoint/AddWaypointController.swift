//
//  AddWaypointController.swift
//  Trip planner
//
//  Created by luxury on 5/15/19.
//  Copyright © 2019 luxury. All rights reserved.
//

import Foundation
import UIKit

class AddWaypointController: UIViewController, UISearchBarDelegate, UISearchDisplayDelegate, UITableViewDataSource, UITableViewDelegate {
    
    
    @IBOutlet weak var waypointsListTableView: UITableView!
    @IBOutlet weak var searchBar: UISearchBar!
    
    @IBAction func cancelButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func saveButton(_ sender: Any) {
        print("supposed to save to core data")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        searchBar.delegate = self
        waypointsListTableView.delegate = self
        waypointsListTableView.dataSource = self
    }
    
    func searchBarTextDidBeginEditing(_ searchBar: UISearchBar) {
        searchBar.setShowsCancelButton(true, animated: true)
        searchBar.tintColor = .blue
       waypointsListTableView.isHidden = false
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        searchBar.setShowsCancelButton(true, animated: true)
        waypointsListTableView.isHidden = false
    }
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        searchBar.resignFirstResponder()
        searchBar.setShowsCancelButton(false, animated: true)
        searchBar.text = ""
        waypointsListTableView.isHidden = true
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = waypointsListTableView.dequeueReusableCell(withIdentifier: "waypointsListCell", for: indexPath)
        cell.textLabel?.text = "dummy dataaa"
        return cell
    }
    
    
}
