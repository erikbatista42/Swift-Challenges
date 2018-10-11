//
//  ScoreLabel.swift
//  Game-Starter-Empty
//
//  Created by Erik Batista on 10/11/18.
//  Copyright © 2018 Make School. All rights reserved.
//

import Foundation
import SpriteKit
import GameplayKit

class ScoreLabel: SKLabelNode {
    
    public var actualScore: Int = 0
    private var displayScore: Int = 0
    
    init(font: String, fontColor: UIColor, fontSize: CGFloat) {
        super.init()
        self.fontName = font
        self.text = "Score: "
        self.fontColor = fontColor
        self.fontSize = fontSize
    }
    
    func updateScore(score: Int) {
        self.actualScore += score
    }
    
    func updateDisplay() {
        if displayScore != actualScore {
            displayScore += (actualScore - displayScore).signum() * 5
        }
        self.text = "Score: \(displayScore)"
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
