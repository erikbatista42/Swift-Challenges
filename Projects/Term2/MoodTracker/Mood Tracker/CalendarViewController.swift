//
//  CalendarViewController.swift
//  Mood Tracker
//
//  Created by luxury on 11/15/18.
//  Copyright © 2018 luxury. All rights reserved.
//

import UIKit

class CalendarViewController: UIViewController {
    
    @IBAction func pressDone(_ sender: UIButton) {
        presentingViewController?.dismiss(animated: true, completion: nil)
    }

}
