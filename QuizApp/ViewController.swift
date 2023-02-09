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
        "Four + Two is equal to Six",
        "Five - Three is greater than One",
        "Three + Eight is less than Ten"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = quiz[0]
    }

    
    @IBAction func buttonPressed(_ sender: UIButton) {
        
    }
    

}

