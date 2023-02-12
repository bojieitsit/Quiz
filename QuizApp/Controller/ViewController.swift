//
//  ViewController.swift
//  QuizApp
//
//  Created by Andrey on 08.02.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    @IBOutlet weak var choice3Button: UIButton!
    
    var quizBrain = QuizBrain()
    var timer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        scoreLabel.text = "Score: 0"
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.titleLabel?.text
        let userIsRight = quizBrain.checkAnswer(userAnswer!)
        
        if userIsRight {
            sender.backgroundColor = .green
            scoreLabel.text = "Score: \(quizBrain.score)"
        } else {
            sender.backgroundColor = .red
            scoreLabel.text = "Score: \(quizBrain.score)"
        }
        
        quizBrain.nextQuestion()
        
        timer = Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }
    
    @objc func updateUI() {
        choice1Button.setTitle(quizBrain.getButtonTitle()[0], for: .normal)
        choice2Button.setTitle(quizBrain.getButtonTitle()[1], for: .normal)
        choice3Button.setTitle(quizBrain.getButtonTitle()[2], for: .normal)
        choice1Button.backgroundColor = .clear
        choice2Button.backgroundColor = .clear
        choice3Button.backgroundColor = .clear
        progressBar.progress = quizBrain.getProgress()
        questionLabel.text = quizBrain.getQuestionText()
        scoreLabel.text = "Score: \(quizBrain.getScore())"
    }
    
}

