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
        let action = SKAction.run { self.makeGrid() }
        self.run(action)
    }
    
    func makeSquare(x: CGFloat, y: CGFloat, color: UIColor) {
        let size = CGSize(width: 50, height: 50)
        let square = SKSpriteNode(texture: nil, color: color, size: size)
        // bounds is the size
        square.position.x = x
        square.position.y = y
        addChild(square)
    }
    
    func makeGrid() {
        // top squares
        makeSquare(x: 120, y: 400, color: .yellow)
        makeSquare(x: (view?.bounds.width)!/2, y: 400, color: .magenta)
        makeSquare(x: 250, y: 400, color: .yellow)
        // middle squares
        makeSquare(x: (view?.bounds.width)!/2, y: (view?.bounds.height)!/2, color: .magenta)
        makeSquare(x: 120, y: (view?.bounds.height)!/2, color: .magenta)
        makeSquare(x: 250, y: (view?.bounds.height)!/2, color: .magenta)
        // bottom squares
        makeSquare(x: 120, y: 270, color: .yellow)
        makeSquare(x: (view?.bounds.width)!/2, y: 270, color: .magenta)
        makeSquare(x: 250, y: 270, color: .yellow)
    }

}
