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
    
    func createBubble(texture: SKTexture, color: UIColor, y: CGFloat, speed: Double) -> SKSpriteNode {
        
        let size = CGSize(width: 50, height: 50)
        let makeBubble = SKSpriteNode(texture: texture, color: color, size: size)
        // bounds is the size
        makeBubble.position.x = CGFloat(arc4random_uniform(UInt32(view?.bounds.width ?? 0)))
        makeBubble.position.y = 0
        
        let moveUp = SKAction.moveTo(y: y, duration: speed)
        let removeBubble = SKAction.removeFromParent()
        
        let sequence = SKAction.sequence([moveUp,removeBubble])
        
        addChild(makeBubble)
        makeBubble.run(sequence)
        makeBubble.name = "bubble"
        
        return makeBubble
    }
    
    func makeSquare() {
        
        let size = CGSize(width: 50, height: 50)
        let rainbowBox = SKTexture(image: UIImage(named: "rainbowBox")!)
        let square = SKSpriteNode(texture: rainbowBox, color: .magenta, size: size)
        // bounds is the size
        square.position.x = CGFloat(arc4random_uniform(UInt32(view?.bounds.width ?? 0)))
        square.position.y = 0
        
        guard let height = self.view?.bounds.height else { return }

        let moveUp = SKAction.moveTo(y: height, duration: 2)
        let removeBubble = SKAction.removeFromParent()
        
        let sequence = SKAction.sequence([moveUp,removeBubble])
        
        addChild(square)
        square.run(sequence)
        square.name = "bubble"
        
//        return square
    }
    
}
