//
//  EmptyWaypointsController.swift
//  Trip planner
//
//  Created by luxury on 5/15/19.
//  Copyright © 2019 luxury. All rights reserved.
//

import Foundation
import UIKit
import CoreData

class EmptyWaypointsController: UIViewController {
    
    var trip: Trip?
    var managedObjectContext: NSManagedObjectContext!
    
    let haventAddedWaypointsLabel: UILabel = {
        let label = UILabel()
        label.text = "You haven't added any waypoints to your trip!"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 3
        label.textAlignment = .center
        return label
    }()
    
    let getStartedButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Get Started!", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(handleGetStartedButton), for: .touchUpInside)
        return button
    }()
    
    @objc func handleGetStartedButton() {
        let addWaypoint = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "add") as UIViewController
        self.navigationController?.present(addWaypoint, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
    func setupViews() {
        view.addSubview(getStartedButton)
        getStartedButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        getStartedButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        view.addSubview(haventAddedWaypointsLabel)
        haventAddedWaypointsLabel.bottomAnchor.constraint(equalTo: getStartedButton.topAnchor, constant: -20).isActive = true
        haventAddedWaypointsLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        haventAddedWaypointsLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        haventAddedWaypointsLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
}
