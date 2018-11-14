//
//  ViewController.swift
//  TableView
//
//  Created by luxury on 11/8/18.
//  Copyright © 2018 luxury. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var tableView: UITableView?
    let cellId = "cellId"
    let nums = ["hey","hey","hey","hey","hey","hey","hey","hey",]


    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.521568656, green: 0.1098039225, blue: 0.05098039284, alpha: 1)
        tableView = UITableView(frame: CGRect(x: 0, y: 0, width: self.view.bounds.width, height: self.view.bounds.height))
        view.addSubview(tableView!)
        tableView?.register(UITableViewCell.self, forCellReuseIdentifier: cellId)
        tableView?.delegate = self
        tableView?.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nums.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath)
        
        cell.textLabel?.text = nums[indexPath.row]
        
        
        return cell
    }


}

