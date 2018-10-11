//
//  GameScene.swift
//  Game-Starter-Empty
//
//  Created by mitchell hudson on 9/13/18.
//  Copyright © 2018 Make School. All rights reserved.
//

import SpriteKit
import GameplayKit
import UIKit



class GameScene: SKScene {
    let squareSize = CGSize(width: 40, height: 40)
    var counter = 0
    let counts = ScoreLabel(font: "Helvetica", fontColor: .white, fontSize: 30)
    
    enum GameState {
        case run, gameOver
    }
    var state: GameState = .run
    
    override func didMove(to view: SKView) {
        // position score label, add it to the scene
        counts.position = CGPoint(x: self.size.width / 2, y: self.size.height - 35)
        addChild(counts)
        
    }
    
    override func update(_ currentTime: TimeInterval) {
        if state == .run {
            // check loss condition
            if counts.actualScore < 0 {
                gameOver()
            }
            
            // check if we need to make a box
            if counter <= 0 {
                makeSquare()
                counter = 15 * Int.random(in: 1...4)
            } else {
                counter -= 1
            }
        }
        counts.updateDisplay()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if state == .gameOver {
            if let view = self.view {
                state = .run
                // Load the SKScene from 'GameScene.sks'
                let scene = GameScene(size: view.bounds.size)
                // Set the scale mode to scale to fit the window
                scene.scaleMode = .aspectFill
                
                // Present the scene
                view.presentScene(scene)
                
                view.ignoresSiblingOrder = true
                
                view.showsFPS = true
                view.showsNodeCount = true
            }
        }
        if state == .run {
            if let touch = touches.first {
                let touchedNode = self.atPoint(touch.location(in: self))
                if touchedNode.name == "box" {
                    // remove the box from the screen and give the player some points
                    touchedNode.removeFromParent()
                    counts.updateScore(score: 50)
                }
            }
        }
    }
    
    func makeSquare() {

        let color = UIColor(hue: CGFloat.random(in: 0...1), saturation: 1, brightness: 1, alpha: 1)
        
        // make a new box
        let square = Box(squareSize: squareSize, color: color, name: "box", screenSize: self.size)
        
        // add the box to the screen
        addChild(square)
        
        zoom(square)
        }
    
    func zoom(_ node: SKSpriteNode) {
        let moveUp = SKAction.moveTo(y: self.size.height, duration: Double(Int.random(in: 1...6)))
        let seq = SKAction.sequence([moveUp, .removeFromParent()])
        node.run(seq) {

            self.counts.updateScore(score: -50)
        }
    }
    
    
    func countScore() {
        counts.position = CGPoint(x: (view?.bounds.width)!/2, y: ((view?.bounds.height)!) - 40)
        counts.fontSize = 25
        counts.text = "Score: \(counter)"
        addChild(counts)
    }
    
    func gameOver() {
        state = .gameOver
        self.removeAllChildren()
        let gameOverLabel = SKLabelNode(fontNamed: "Helvetica")
        gameOverLabel.text = "Game Over!"
        gameOverLabel.position = CGPoint(x: self.size.width / 2, y: self.size.height / 2)
        gameOverLabel.fontColor = .white
        gameOverLabel.fontSize = 45
        
        addChild(gameOverLabel)
    }
    

}
