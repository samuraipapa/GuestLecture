//
//  GameScene.swift
//  GuestLecture
//
//  Created by Yury Gitman on 6/10/16.
//  Copyright (c) 2016 yg. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */

        
        self.backgroundColor = UIColor.blackColor()
        self.physicsWorld.gravity.dy = 0.5
        
//        self.addChild(myLabel)
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
       /* Called when a touch begins */
        
        for touch in touches {
            let location = touch.locationInNode(self)
            
            makeAStick(UIColor.cyanColor(), location: location)
        }
    }
    
    
    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {

        for touch in touches {
            let location = touch.locationInNode(self)

        makeABox(UIColor.yellowColor(), location: location)

        }
    }
    
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        for touch in touches {
            let location = touch.locationInNode(self)

        
        makeAStick(UIColor.blueColor(), location: location)
        }
    }
    
    
    
    
    func makeAStick(myColor: UIColor, location: CGPoint){

        let sprite = SKSpriteNode(color: myColor, size: CGSize(width: 200, height: 20))
        
        sprite.position = location
        
        //Spin the Sticks
       // let action = SKAction.rotateByAngle(CGFloat(M_PI), duration:2.2)
      //  sprite.runAction(SKAction.repeatActionForever(action))
        
        
        // Add physicsBody
        sprite.physicsBody = SKPhysicsBody(rectangleOfSize: sprite.size)
        self.addChild(sprite)
        sprite.physicsBody?.affectedByGravity = false
        sprite.physicsBody?.dynamic = false
        
    
    }
   
    
    
    
    func makeABox(myColor: UIColor, location: CGPoint){
        
        let sprite = SKSpriteNode(color: myColor, size: CGSizeMake(20.0, 20.0))
        
        sprite.position = location
        
        //Spin the Sticks
         let action = SKAction.rotateByAngle(CGFloat(M_PI), duration:1.2)
          sprite.runAction(SKAction.repeatActionForever(action))
        
       sprite.physicsBody = SKPhysicsBody(rectangleOfSize: sprite.size)
        
        self.addChild(sprite)
        
        
    }

    
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}
