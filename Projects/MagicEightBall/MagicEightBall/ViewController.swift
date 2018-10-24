//
//  ViewController.swift
//  MagicEightBall
//
//  Created by luxury on 10/23/18.
//  Copyright © 2018 luxury. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var shakeButton: UIButton!
    
    let answers = ["Lost", "Prison Break", "Full House", "The Office", "F•r•i•e•n•d•s", "I almost got away with it", "Orange is the new black", "Vampire diaries", "Jessica Jones", "Luke Cage", "Iron Fist", "Daredevil"]

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print(123)
    }
    
    func generateAnswer() {
        let maxIndex = UInt32(answers.count)
        let randomIndex = Int(arc4random_uniform(maxIndex))
        
        answerLabel.text = answers[randomIndex]
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        guard motion == .motionShake else { return }
        generateAnswer()
    }
    
    @IBAction func shakeButtonTapped(_ sender: Any) {
        generateAnswer()
    }
    
    
    
    
    


}

