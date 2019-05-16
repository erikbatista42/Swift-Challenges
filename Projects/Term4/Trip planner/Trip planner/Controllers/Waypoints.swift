//
//  Waypoints.swift
//  Trip planner
//
//  Created by luxury on 5/14/19.
//  Copyright © 2019 luxury. All rights reserved.
//

import Foundation
import UIKit

class EmptyWaypointsController: UIViewController {
    
    var waypoints = ["something"]
    var tableView = UITableView()
    
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

    let topViewLabel: UILabel = {
        let label = UILabel()
        label.text = "San Francisco"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 3
        label.textAlignment = .center
        return label
    }()
    
    let addMoreWaypointsButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Add more waypoints", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(handleGetStartedButton), for: .touchUpInside)
        return button
    }()
    
    
    let topView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override func viewDidAppear(_ animated: Bool) {

        
        waypoints.popLast() // make array empty
        emptyWaypointsView()
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        let waypoint = "San Francisco"
        self.title = "Your Trip:\(waypoint)"
    }
    
//    func waypointsView() {
//        view.addSubview(topView)
//        topView.topAnchor.constraint(equalTo: view.topAnchor, constant: 80).isActive = true
//        topView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
//        topView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
//        topView.heightAnchor.constraint(equalToConstant: 200).isActive = true
//
//        topView.addSubview(topViewLabel)
//        topViewLabel.topAnchor.constraint(equalTo: topView.topAnchor, constant: 20).isActive = true
//        topViewLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
//        topViewLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
//        topViewLabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
//
//        topView.addSubview(addMoreWaypointsButton)
//        addMoreWaypointsButton.bottomAnchor.constraint(equalTo: topView.bottomAnchor, constant: -8).isActive = true
//        addMoreWaypointsButton.leftAnchor.constraint(equalTo: topView.leftAnchor, constant: 8).isActive = true
//        addMoreWaypointsButton.rightAnchor.constraint(equalTo: topView.rightAnchor, constant: -8).isActive = true
//
//        tableView.backgroundColor = .green
//        view.addSubview(tableView)
////        tableView.topAnchor.constraint(equalTo: topView.bottomAnchor, constant: 100).isActive = true
////        tableView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
////        tableView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
////        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
//
//    }
    func emptyWaypointsView() {
        view.addSubview(getStartedButton)
        getStartedButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        getStartedButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        view.addSubview(haventAddedWaypointsLabel)
        haventAddedWaypointsLabel.bottomAnchor.constraint(equalTo: getStartedButton.topAnchor, constant: -20).isActive = true
        haventAddedWaypointsLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        haventAddedWaypointsLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        haventAddedWaypointsLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
//
    
}
