//
//  GameScene.swift
//  SushiNeko
//
//  Created by Erik Batista on 10/10/18.
//  Copyright © 2018 Erik Batista. All rights reserved.
//

import SpriteKit

/* Tracking enum for use with character and sushi side */
enum Side {
    case left, right, none
}
class GameScene: SKScene {
    
    /* Game objects */
    var sushiBasePiece: SushiPiece!
    /* Cat Character */
    var character: Character!
    
    
    override func didMove(to view: SKView) {
        super.didMove(to: view)
        /* Connect game objects */
        sushiBasePiece = childNode(withName: "sushiBasePiece") as! SushiPiece
        /* Setup chopstick connections */
        sushiBasePiece.connectChopsticks()
        /* Connect game objects */
        sushiBasePiece = childNode(withName: "sushiBasePiece") as! SushiPiece
        character = childNode(withName: "character") as! Character
    }
}
