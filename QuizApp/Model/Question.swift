//
//  Question.swift
//  QuizApp
//
//  Created by Andrey on 09.02.2023.
//

import Foundation

struct Question {
    let text: String
    let answer: String
    
    init(q: String, a: String) {
        self.text = q
        self.answer = a
    }
}
