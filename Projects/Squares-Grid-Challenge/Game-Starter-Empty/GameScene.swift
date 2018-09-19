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
        let box = makeSquare(x: view.bounds.width/2 - 200, y: view.bounds.height/2 - 200, color: .magenta)
//        let fadeOut = SKAction.fadeOut(withDuration: 0.3)
        
//        let fadeIn = SKAction.fadeIn(withDuration: 2)
//        let moveUp = SKAction.moveBy(x: 0, y: 50, duration: 0.5)
////        let moveUp = SKAction.moveBy(
//        let moveRight = SKAction.moveBy(x: 50, y: 0, duration: 0.5)
//        let moveDown = SKAction.moveBy(x: 0, y: -200, duration: 1)
//        let moveLeft = SKAction.moveBy(x: -50, y: 0, duration: 0.5)
//        let scale = SKAction.scale(by: 5, duration: 1)
//        let group = SKAction.group([moveDown,scale])
        
        let moveRight = SKAction.moveBy(x: 100, y: 0, duration: 1);
        let jump = SKAction.moveBy(x: 100, y: 100, duration: 2);
        let moveMoreRight = SKAction.moveBy(x: 100, y: 0, duration: 1);
        let jumpDown = SKAction.moveBy(x: 100, y: -100, duration: 2);
        let moveRightAgain = SKAction.moveBy(x: 100, y: 0, duration: 2);
        let sequence = SKAction.sequence([moveRight, jump, moveMoreRight, jumpDown, moveRightAgain]);
        box.run(sequence);
//
        
//        box.run(group)
        
    }
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
//        let action = SKAction.run { self.makeGrid() }
//        self.run(action)
      
    }
    
    func makeSquare(x: CGFloat, y: CGFloat, color: UIColor) -> SKSpriteNode {
                let size = CGSize(width: 50, height: 50)
                let square = SKSpriteNode(texture: nil, color: color, size: size)
                // bounds is the size
                square.position.x = x
                square.position.y = y
                addChild(square)
        return square;
            }
    
    
//    func makeSquare(x: CGFloat, y: CGFloat, color: UIColor) {
//        let size = CGSize(width: 50, height: 50)
//        let square = SKSpriteNode(texture: nil, color: color, size: size)
//        // bounds is the size
//        square.position.x = x
//        square.position.y = y
//        addChild(square)
//    }
//
//
    func makeGrid() {
//        // top squares
//        makeSquare(x: 120, y: 400, color: .yellow)
//        makeSquare(x: (view?.bounds.width)!/2, y: 400, color: .magenta)
//        makeSquare(x: 250, y: 400, color: .yellow)
//        // middle squares
//        makeSquare(x: (view?.bounds.width)!/2, y: (view?.bounds.height)!/2, color: .magenta)
//        makeSquare(x: 120, y: (view?.bounds.height)!/2, color: .magenta)
//        makeSquare(x: 250, y: (view?.bounds.height)!/2, color: .magenta)
//        // bottom squares
//        makeSquare(x: 120, y: 270, color: .yellow)
//        makeSquare(x: (view?.bounds.width)!/2, y: 270, color: .magenta)
//        makeSquare(x: 250, y: 270, color: .yellow)
    }

}
