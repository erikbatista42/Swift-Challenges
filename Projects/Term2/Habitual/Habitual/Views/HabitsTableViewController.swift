//
//  MainViewController.swift
//  Habitual
//
//  Created by luxury on 11/14/18.
//  Copyright © 2018 luxury. All rights reserved.
//

import UIKit

class HabitsTableViewController: UITableViewController {
    
//    The difference between a UIViewController and a UITableViewController is the UITableViewController uses a UITableView as its view. Whereas a UIViewController uses a blank UIView.
    var names: [String] = ["Alan", "Adriana", "Adam", "Anne", "Mitchell", "Dani"]
    override func viewDidLoad() {
        super.viewDidLoad()

//        view.backgroundColor = .blue
        setupNavBar()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell: UITableViewCell
        if let dequeueCell = tableView.dequeueReusableCell(withIdentifier: "cell") {
            cell = dequeueCell
        } else {
            cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
        }
        let name = names[indexPath.row]
        cell.textLabel?.text = name
        return cell
    }
    
 
}

extension HabitsTableViewController {
    
    func setupNavBar() {
        title = "Habitual"
        let addButton = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(pressAddHabit(_:)))
        navigationItem.rightBarButtonItem = addButton
    }
    
    @objc func pressAddHabit(_ sender: UIBarButtonItem) {
        names.insert("Hello, World!", at: 0)
        let topIndexPath = IndexPath(row: 0, section: 0)
        tableView.insertRows(at: [topIndexPath], with: .automatic)
    }
}
