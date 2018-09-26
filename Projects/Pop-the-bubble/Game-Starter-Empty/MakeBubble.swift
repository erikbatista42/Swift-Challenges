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

class MakeBubble: SKScene {
    
    func makeSquare(x: CGFloat, y: CGFloat, color: UIColor) -> SKSpriteNode {
        let size = CGSize(width: 50, height: 50)
        let square = SKSpriteNode(texture: nil, color: color, size: size)
        // bounds is the size
        square.position.x = x
        square.position.y = y
        addChild(square)
        
        return square
    }
    
    func printSomething() {
        print(123)
    }
    
}
