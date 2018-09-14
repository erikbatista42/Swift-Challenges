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
            self.topRow()
            self.middleRow()
            self.bottomRow()
        }
        self.run(action)
    }
    
    func topRow() {
        func firstSquare() {
            let size = CGSize(width: 50, height: 50)
            let square = SKSpriteNode(texture: nil, color: .magenta, size: size)
            // bounds is the size
            square.position.x = 120
            square.position.y = 400
            addChild(square)
        }
        firstSquare()
        
        func secondSquare() {
            let size = CGSize(width: 50, height: 50)
            let square = SKSpriteNode(texture: nil, color: .magenta, size: size)
            if let view = self.view {
                square.position.x = view.bounds.width/2
                square.position.y = 400
            }
            addChild(square)
        }
        secondSquare()
        
        func thirdSquare() {
            let size = CGSize(width: 50, height: 50)
            let square = SKSpriteNode(texture: nil, color: .magenta, size: size)
            square.position.x = 250
            square.position.y = 400
            addChild(square)
        }
        thirdSquare()
    }
    
    func middleRow() {
        func firstSquare() {
            let size = CGSize(width: 50, height: 50)
            let square = SKSpriteNode(texture: nil, color: .magenta, size: size)
            if let view = self.view {
                square.position.x = view.bounds.width/2
                square.position.y = view.bounds.height/2
            }
            addChild(square)
        }
        firstSquare()
        
    func secondSquare() {
            let size = CGSize(width: 50, height: 50)
            let square = SKSpriteNode(texture: nil, color: .magenta, size: size)
            if let view = self.view {
                square.position.x = 120
                
                square.position.y = view.bounds.height/2
            }
            addChild(square)
        }
        secondSquare()
        
        func thirdSquare() {
            let size = CGSize(width: 50, height: 50)
            let square = SKSpriteNode(texture: nil, color: .magenta, size: size)
            if let view = self.view {
                square.position.x = 250
                square.position.y = view.bounds.height/2
            }
            addChild(square)
        }
        thirdSquare()
    }
    
    func bottomRow() {
        func firstSquare() {
            let size = CGSize(width: 50, height: 50)
            let square = SKSpriteNode(texture: nil, color: .magenta, size: size)
            // bounds is the size
            square.position.x = 120
            square.position.y = 270
            addChild(square)
        }
        firstSquare()
        
        func secondSquare() {
            let size = CGSize(width: 50, height: 50)
            let square = SKSpriteNode(texture: nil, color: .magenta, size: size)
            if let view = self.view {
                square.position.x = view.bounds.width/2
                square.position.y = 270
            }
            addChild(square)
        }
        secondSquare()
        
        func thirdSquare() {
            let size = CGSize(width: 50, height: 50)
            let square = SKSpriteNode(texture: nil, color: .magenta, size: size)
            square.position.x = 250
            square.position.y = 270
            addChild(square)
        }
        thirdSquare()
    }
    
}
