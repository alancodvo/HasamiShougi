//
//  GameScene.swift
//  HasamiShougi
//
//  Created by alan-arakawa-yoshihiro on H27/02/07.
//  Copyright (c) 平成27年 Yoshihiro Arakawa. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("NSCoder not supported")
    }
    
    override init(size: CGSize) {
        super.init(size: size)
        
        anchorPoint = CGPoint(x: 0, y: 0)
        
        let background = SKSpriteNode(imageNamed: "ban")
        background.size = CGSizeMake(320, 320)
        background.position = CGPoint(x: 0, y: 0)
        background.anchorPoint = CGPoint(x: 0, y: 0)
        addChild(background)
    }
}
