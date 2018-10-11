//
//  MakeBubble.swift
//  Game-Starter-Empty
//
//  Created by Erik Batista on 9/25/18.
//  Copyright © 2018 Make School. All rights reserved.
//

import Foundation
import UIKit
import SpriteKit
import GameplayKit

class Box: SKSpriteNode {
    
    init(squareSize: CGSize, color: UIColor, name: String, screenSize: CGSize) {
         let rainbowBox = SKTexture(image: UIImage(named: "rainbowBox")!)
        super.init(texture: rainbowBox, color: color, size: squareSize)
        self.name = name
        setup(width: screenSize.width)
    }
    
    func setup(width: CGFloat) {
        let xPosition = Int.random(in: 20...Int(width - 20))
        self.position = CGPoint(x: xPosition, y: 0)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
