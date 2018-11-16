//
//  ViewController.swift
//  MoodTracker
//
//  Created by luxury on 11/15/18.
//  Copyright © 2018 luxury. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBAction func pressAddEntry(_ sender: UIBarButtonItem) {
        print(123)
    }
    
    var entries: [MoodEntry] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        let goodEntry = MoodEntry(mood: .good, date: Date())
        let badEntry = MoodEntry(mood: .bad, date: Date())
        let neutralEntry = MoodEntry(mood: .neutral, date: Date())
        
        entries = [goodEntry, badEntry, neutralEntry]
        tableView.reloadData()
        
        tableView.delegate = self
        tableView.dataSource = self
    }


}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return entries.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "mood entry cell", for: indexPath) as! MoodEntryTableViewCell
        
        let entry = entries[indexPath.row]
        cell.labelMoodTitle.text = entry.mood.stringValue
        cell.imageViewMoodColor.backgroundColor = entry.mood.colorValue
        cell.labelMoodDate.text = String(describing: entry.date)
        
        return cell
    }
}
