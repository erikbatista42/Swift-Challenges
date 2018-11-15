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
    var habits: [Habit] = [
        Habit(title: "Go to bed before 10p", image: Habit.Images.book),
        Habit(title: "Drink 8 Glasses of Water", image: Habit.Images.book),
        Habit(title: "Commit Today", image: Habit.Images.book),
        Habit(title: "Stand up every Hour", image: Habit.Images.book)
    ]
    override func viewDidLoad() {
        super.viewDidLoad()

//        view.backgroundColor = .blue
        setupNavBar()
        tableView.register(HabitTableViewCell.nib,forCellReuseIdentifier: HabitTableViewCell.identifier)
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return habits.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell( withIdentifier: HabitTableViewCell.identifier, for: indexPath) as! HabitTableViewCell
        let habit = habits[indexPath.row]
        cell.configure(habit)
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
//        habits.insert("Hello, World!", at: 0)
        let topIndexPath = IndexPath(row: 0, section: 0)
        tableView.insertRows(at: [topIndexPath], with: .automatic)
    }
}
