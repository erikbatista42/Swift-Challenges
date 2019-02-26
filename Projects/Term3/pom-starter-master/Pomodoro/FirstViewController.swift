//
//  FirstViewController.swift
//  Pomodoro
//
//  Created by Adriana González Martínez on 1/16/19.
//  Copyright © 2019 Adriana González Martínez. All rights reserved.
//  Initial app found here www.globalnerdy.com/2017/06/28/the-code-for-tampa-ios-meetups-pomodoro-timer-exercise

import UIKit

class FirstViewController: UIViewController {

    var completedCycles = 0
    @IBOutlet weak var messageLabel: UILabel!
    
    deinit {
        //ACTION: Remove observers
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //ACTION: Add observers
        NotificationCenter.default.addObserver(self, selector: #selector(receivedNotification(_:)), name: NSNotification.Name(rawValue: "completedPomo"), object: nil)
        
    }
    
    @objc func receivedNotification(_ notification:Notification) {
        // Update value of completed cycles
        self.completedCycles += 1
        // Update message label
        self.messageLabel.text = "\(completedCycles) cycles completed."
    }
    
}

