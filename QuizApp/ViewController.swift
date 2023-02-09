//
//  ViewController.swift
//  QuizApp
//
//  Created by Andrey on 08.02.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    let quiz = [
        Question(q: "Four + Two is equal to Six", a: "True"),
        Question(q: "Five - Three is greater than One", a: "True"),
        Question(q: "Three + Eight is less than Ten", a: "False")
    ]
    
    var questionNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateQuestionLabel()
    }

    
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.titleLabel?.text
        let actualAnswer = quiz[questionNumber].answer
        
        
        if questionNumber < quiz.count - 1 {
            questionNumber += 1
            updateQuestionLabel()
        } else {
            questionNumber = 0
            updateQuestionLabel()
        }
        
        if userAnswer == actualAnswer {
            print("True") //Correct answer
        } else {
            print("False") //Incorrect answer
        }
    }
    
    func updateQuestionLabel() {
        questionLabel.text = quiz[questionNumber].text
    }
    

}

