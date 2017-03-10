//
//  ViewController.swift
//  IOSQuiz
//
//  Created by Ryan Munguia on 3/9/17.
//  Copyright © 2017 Ryan Munguia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var answerLabel: UILabel!
    
   
    let quiz = Quiz()
    
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        if answerLabel.isHidden == true {
            answerLabel.isHidden = false
        }else{
            answerLabel.isHidden = true
        }
        // if answerLabel is not hidden, then make it hidden
        // else set it not hidden
    }
    
    @IBAction func nextButtonPressed(_ sender: UIButton) {
        if quiz.currentQuestion != Quiz.quizBank.count - 1 {
            quiz.currentQuestion += 1
        }else{
            quiz.currentQuestion = 0
        }
        
        updateUI()
        // if currentQuestion is less than the count of quizBank - 1 then currentQuestion++
        // else set currentQuestion to 0
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    func updateUI() {
        questionLabel.text = Quiz.quizBank[quiz.currentQuestion].0
        answerLabel.text = Quiz.quizBank[quiz.currentQuestion].1
        answerLabel.isHidden = true
        // set questionLabel's text to equal quizBank[currentQuestion].0
        // set answerLabel's text to equal quizBank[currentQuestion].1
        // then set answerLabel to be hidden
        
    }

}

