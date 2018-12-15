//
//  ConfirmHabitViewController.swift
//  Habitual
//
//  Created by luxury on 12/14/18.
//  Copyright © 2018 luxury. All rights reserved.
//

import UIKit

class ConfirmHabitViewController: UIViewController {
    
    var habitImage: Habit.Images!
    
//    @IBOutlet weak var habitImageView: UIImageView!
//
//    @IBOutlet weak var habitNameInputTextField: UITextField!
    
    
    @IBOutlet weak var habitImageView: UIImageView!
    
    
    @IBOutlet weak var habitNameInputTextField: UITextField!
    
    @IBAction func createHabitButtonPressed(_ sender: UIButton) {
        var persistenceLayer = PersistenceLayer()
        guard let habitText = habitNameInputTextField.text else { return }
        persistenceLayer.createNewHabit(name: habitText, image: habitImage)
        self.presentingViewController?.dismiss(animated: true, completion: nil)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
        print(123)
        
    }
    
    private func updateUI() {
        title = "New Habit"
        habitImageView.image = habitImage.image
    }

}
