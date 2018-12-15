//
//  HabitDetailedViewController.swift
//  Habitual
//
//  Created by luxury on 12/14/18.
//  Copyright © 2018 luxury. All rights reserved.
//

import UIKit

class HabitDetailedViewController: UIViewController {
    
    
    @IBOutlet weak var imageViewIcon: UIImageView!
    @IBOutlet weak var currentStreakLabel: UILabel!
    
    @IBOutlet weak var totalCompletionsLabel: UILabel!
    
    @IBOutlet weak var bestStreakLabel: UILabel!
    
    @IBOutlet weak var dateLabel: UILabel!
    
    @IBOutlet weak var buttonAction: UIButton!
    @IBAction func actionButtonPressed(_ sender: Any) {
        habit = persistenceLayer.markHabitAsCompleted(habitIndex)
        updateUI()
    }
    
    
    var habit: Habit!
    var habitIndex: Int!
    
    private var persistenceLayer = PersistenceLayer()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
        
    }
    
    private func updateUI() {
        title = habit.title
        imageViewIcon.image = habit.selectedImage.image
        currentStreakLabel.text = "Current Streak: \(habit.currentStreak)"
        totalCompletionsLabel.text = "Total Completions: \(habit.numberOfCompletions)"
        bestStreakLabel.text = "Best Streak: \(habit.bestStreakLabel)"
        dateLabel.text = String(habit.dateCreated.stringValue)
        
        if habit.hasCompletedForToday {
            buttonAction.setTitle("Completed For Today!", for: .normal)
        } else {
            buttonAction.setTitle("Mark as completed", for: .normal)
        }
    }
}
