//
//  GameScene.swift
//  Game-Starter-Empty
//
//  Created by mitchell hudson on 9/13/18.
//  Copyright © 2018 Make School. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
  
    override func didMove(to view: SKView) {
        let firstAction = SKAction.run {
            self.makeSquare()
        }
        
        let wait = SKAction.wait(forDuration: 1)
        
        let sequence = SKAction.sequence([firstAction, wait])
        
        let repeatCreations = SKAction.repeatForever(sequence)
        self.run(repeatCreations)
    }
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
//        let action = SKAction.run { self.makeGrid() }
//        self.run(action)
    }
    
    func makeSquare() {
        
            let size = CGSize(width: 50, height: 50)
            let square = SKSpriteNode(texture: nil, color: .magenta, size: size)
                // bounds is the size
            square.position.x = CGFloat(arc4random_uniform(UInt32(view?.bounds.width ?? 0)))
            square.position.y = 0
        
            let moveUp = SKAction.moveTo(y: (view?.bounds.height)!, duration: 2)
            let removeBubble = SKAction.removeFromParent()
        
            let sequence = SKAction.sequence([moveUp,removeBubble])
        
            addChild(square)
            square.run(sequence)
            square.name = "bubble"
        }
    

}
