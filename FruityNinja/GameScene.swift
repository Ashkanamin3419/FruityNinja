//
//  GameScene.swift
//  FruityNinja
//
//  Created by Ashkan Amin on 2/13/20.
//  Copyright © 2020 Ashkan Amin. All rights reserved.
//

import SpriteKit
import GameplayKit
enum GamePhase {
    case Ready
    case InPlay
}
class GameScene: SKScene {
    var gamePhase = GamePhase.Ready
    var score = 0
    var best = 0
    var promptLabel = SKLabelNode()
    var scoreLabel = SKLabelNode()
    var bestLabel = SKLabelNode()
    var fruitThrowTimer = Timer()
    override func didMove(to view: SKView) {
        scoreLabel = childNode(withName: "score label") as! SKLabelNode
        scoreLabel.text = "\(score)"
        bestLabel = childNode(withName: "best label") as! SKLabelNode
        bestLabel.text = "Best: \(best)"
        promptLabel = childNode(withName: "prompt label") as! SKLabelNode
        
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if gamePhase == .Ready {
            gamePhase = .InPlay
            startGame()
        }
        for t in touches {
            let location = t.location(in: self)
        }
    }
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches {
            let location = t.location(in: self)
        }
    }
    override func didSimulatePhysics() {
        
    }
    func startGame(){
        promptLabel.isHidden = true
        fruitThrowTimer = Timer.scheduledTimer(withTimeInterval: 3.0, repeats: true, block: { _ in
            self.createFruits()
        })
    }
    func createFruits(){
        print("fruits")
    }
    func mussFruit(){
        
    }
    func bombExplode(){
        
    }
    func gameOver(){
        
    }
}
