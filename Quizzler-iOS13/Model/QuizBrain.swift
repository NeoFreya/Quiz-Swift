//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by Abdul Halim on 19/11/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation

struct QuizBrain {
    
    var questionNumber = 0
    var score = 0
    
    let quiz = [
        Question(text: "Apakah Macbook Lebih Mahal Dari Ginjal?", answer: "True"),
        Question(text: "Apakah Nabil Sering Ngeselin?", answer:"True"),
        Question(text: "Apakah Kursi itu Kotak?", answer: "False" ),
        Question(text: "Apakah Aku Ganteng?", answer: "True"),
        Question(text: "Air itu Putih ga?", answer: "False")
    ]
    
    func getQuestionText() -> String {
        return quiz[questionNumber].text
    }
    
    mutating func checkAnswer(userAnswer : String) -> Bool {
        if userAnswer == quiz[questionNumber].answer{
            score += 1
            return true
        }else{
            score -= 1
            return false
        }
        
    }
    
    mutating func nextQuestion() {
        if questionNumber + 1 < quiz.count{
            questionNumber += 1
        } else{
            questionNumber = 0
        }
    }
    
    func getProgress() -> Float {
        return Float(questionNumber + 1) / Float(quiz.count)
    }
    
    func getScore() -> Int{
        return score
    }
}
