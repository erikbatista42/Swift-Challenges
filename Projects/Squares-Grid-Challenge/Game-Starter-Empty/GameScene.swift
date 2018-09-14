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
        // Called when the scene has been displayed
    }
    
  
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
        let action = SKAction.run {
            self.firstSquare()
            self.secondSquare()
            self.thirdSquare()
        }
        self.run(action)
    }
    //            var width = view.bounds.width
    //            width = 100
    //            square.position.x = width
    func firstSquare() {
        let size = CGSize(width: 50, height: 50)
        let square = SKSpriteNode(texture: nil, color: .magenta, size: size)
        // bounds is the size
        if let view = self.view {
            square.position.x = view.bounds.width/2
            square.position.y = view.bounds.height/2
        }
    }
        
    func secondSquare() {
            let size = CGSize(width: 50, height: 50)
            let square = SKSpriteNode(texture: nil, color: .magenta, size: size)
            // bounds is the size
            if let view = self.view {
                square.position.x = view.bounds.width/2
                square.position.y = view.bounds.height/2
            }
        }
            
    func thirdSquare() {
                let size = CGSize(width: 50, height: 50)
                let square = SKSpriteNode(texture: nil, color: .magenta, size: size)
                // bounds is the size
                if let view = self.view {
                    square.position.x = view.bounds.width/2
                    square.position.y = view.bounds.height/2
                }
            }
        
    
    
    
    
}
