//
//  ViewController.swift
//  Ninja Gold
//
//  Created by Ryan Munguia on 3/9/17.
//  Copyright © 2017 Ryan Munguia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var farmLabel: UILabel!
    @IBOutlet weak var caveLabel: UILabel!
    @IBOutlet weak var houseLabel: UILabel!
    @IBOutlet weak var casinoLabel: UILabel!
    
    var score = 0
    //let ninja = NinjaGold()

    override func viewDidLoad() {
        super.viewDidLoad()
        scoreLabel.text = String(score)
    }

    

    @IBAction func buildingButtonPressed(_ sender: UIButton) {
        if sender.tag == 1{
            farmLabel.isHidden = false
            let gold = Int(arc4random_uniform(11) + 10)
            updateGold(amount: gold)
            farmLabel.text = "Won \(gold) from farm"
            
        }else if sender.tag == 2{
            caveLabel.isHidden = false
            let gold = Int(arc4random_uniform(6) + 5)
            updateGold(amount: gold)
            caveLabel.text = "Won \(gold) from cave"
            
        }else if sender.tag == 3{
            houseLabel.isHidden = false
            let gold = Int(arc4random_uniform(4) + 2)
            updateGold(amount: gold)
            houseLabel.text = "Won \(gold) from  house"
            
        }else if sender.tag == 4{
            casinoLabel.isHidden = false
            let gold = Int(arc4random_uniform(51))
            let gamble = Int(arc4random_uniform(2))
            if gamble == 1 {
                updateGold(amount: gold)
                casinoLabel.text = "Won \(gold) from casino"
                
            }else{
                score -= gold
                casinoLabel.text = "Lost \(gold) from casino"
                
            }
            
        }else if sender.tag == 5{
            resetGame()
        }
        
        scoreLabel.text = String(score)
        
    }
    
    
    func updateGold(amount: Int){
        score += amount
    }
    
    func resetGame(){
        farmLabel.isHidden = true
        houseLabel.isHidden = true
        casinoLabel.isHidden = true
        caveLabel.isHidden = true
        score = 0
        scoreLabel.text = String(score)
    }
    
    
    
}
