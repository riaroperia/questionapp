//
//  Questions.swift
//  questionapp
//
//  Created by roperia on 2023-08-11.
//

import Foundation

struct Question {
    let text: String
    let resultMessage: String
}

let questions = [
    Question(
        text: "What is the capital of France?",
        resultMessage: "Correct! The capital of France is Paris."
    ),
    Question(
        text: "What is the largest planet in our solar system?",
        resultMessage: "That's right! The largest planet is Jupiter."
    ),
    Question(
        text: "How many continents are there?",
        resultMessage: "Well done! There are seven continents on Earth."
    ),
]
