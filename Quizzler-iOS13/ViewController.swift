//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueBtn: UIButton!
    @IBOutlet weak var falseBtn: UIButton!
    
    let questions = [
        ["2 + 4 is equal to 6", "True"],
        ["5 - 3 is greater than 1", "True"],
        ["3 + 8 is less than 10", "False"],
    ]
    
    var currQuestionIndex = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }
    
    
    @IBAction func answerBtnPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle
        let actualAnswer = questions[currQuestionIndex][1]
        
        if userAnswer == actualAnswer {
            print("Correct")
        } else {
            print("Oops!")
        }
        
        // Next question + RefreshUI
        if currQuestionIndex + 1 < questions.count {
            currQuestionIndex += 1
        } else {
            currQuestionIndex = 0
        }
        
        updateUI()
    }
    
    func updateUI() {
        questionLabel.text = questions[currQuestionIndex][0]
    }
    

}

