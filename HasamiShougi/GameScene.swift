//
//  GameScene.swift
//  HasamiShougi
//
//  Created by alan-arakawa-yoshihiro on H27/02/07.
//  Copyright (c) 平成27年 Yoshihiro Arakawa. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
        let myLabel = SKLabelNode(fontNamed:"Chalkduster")
        myLabel.text = "Hello, World!";
        myLabel.fontSize = 65;
        myLabel.position = CGPoint(x:CGRectGetMidX(self.frame), y:CGRectGetMidY(self.frame));
        
        self.addChild(myLabel)
        
        required init(coder aDecoder: NSCoder) {
            fatalError("NSCoder not supported")
        }
        
        override init(size: CGSize) {
            super.init(size: size)
            
            anchorPoint = CGPoint(x: 0, y: 0)
            
            let background = SKSpriteNode(imageNamed: "ban")
            background.position = CGPoint(x: 0, y: 0)
            background.anchorPoint = CGPoint(x: 0, y: 0)
            addChild(background)
        }
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        /* Called when a touch begins */
        
        for touch: AnyObject in touches {
            let location = touch.locationInNode(self)
            
            let sprite = SKSpriteNode(imageNamed:"Spaceship")
            
            sprite.xScale = 0.5
            sprite.yScale = 0.5
            sprite.position = location
            
            let action = SKAction.rotateByAngle(CGFloat(M_PI), duration:1)
            
            sprite.runAction(SKAction.repeatActionForever(action))
            
            self.addChild(sprite)
        }
    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}
