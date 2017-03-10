//
//  ViewController.swift
//  Cold Call
//
//  Created by Ryan Munguia on 3/9/17.
//  Copyright © 2017 Ryan Munguia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var numberLabel: UILabel!
    
    let people = ["Ryan", "Shaw", "Kennedy", "Sam", "Pat"]
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    @IBAction func changeName(_ sender: UIButton) {
        
        let number = Int(arc4random_uniform(5) + 1)
        let show_number = String(number)
        numberLabel.text = show_number
        
        if number <= 2{
            numberLabel.textColor = UIColor.red
        }else if number == 5{
            numberLabel.textColor = UIColor.green
        }else {
            numberLabel.textColor = UIColor.orange
        }
        
        
        
        
        
        let personNumber = Int(arc4random_uniform(UInt32(people.count)))
        nameLabel.text = people[personNumber]
    }


}

