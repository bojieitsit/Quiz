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
    
    var quizBrain = QuizBrain()
    var timer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.titleLabel?.text
        let userIsRight = quizBrain.checkAnswer(userAnswer!)
        
        if userIsRight {
            sender.backgroundColor = .green
        } else {
            sender.backgroundColor = .red
        }
        
        timer = Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }
    
    @objc func updateUI() {
        progressBar.progress = quizBrain.getProgress()
        questionLabel.text = quizBrain.getQuestionText()
        quizBrain.updateQuestion()
        trueButton.backgroundColor = .clear
        falseButton.backgroundColor = .clear
    }
    
}

