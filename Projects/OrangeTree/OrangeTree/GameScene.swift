//
//  GameScene.swift
//  OrangeTree
//
//  Created by Erik Batista on 9/20/18.
//  Copyright © 2018 Erik Batista. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    var orangeTree: SKSpriteNode!
    var orange: Orange?
    
    override func didMove(to view: SKView) {
        // Connect game objects
        orangeTree = childNode(withName: "tree") as! SKSpriteNode
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        // Get the location of the touch of the screen
        let touch = touches.first!
        let location = touch.location(in: self)
        
        // Check if the touch was on the Orange tree
        if atPoint(location).name == "tree" {
            // Create an orange and add it to the scene at the touch location
            orange = Orange()
            orange?.position = location
            addChild(orange!)
            
            // Give the orange impulse to make it fly!
            let vector = CGVector(dx: 100, dy: 0)
            orange?.physicsBody?.applyImpulse(vector)
        }
    }
    
}
