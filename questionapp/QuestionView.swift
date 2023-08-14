//
//  QuestionView.swift
//  questionapp
//
//  Created by roperia on 2023-08-11.
//
import SwiftUI

struct QuestionView: View {
    let question: Question
    let onNextQuestion: () -> Void

    @State private var userAnswer: String = ""
    @State private var isAnswerCorrect: Bool = false

    var body: some View {
        VStack {
            Text(question.text)
                .font(.headline)
                .padding()

            TextField("Your Answer", text: $userAnswer)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()

            Button("Submit") {
                let lowercaseUserAnswer = userAnswer.trimmingCharacters(in: .whitespacesAndNewlines).lowercased()
                let lowercaseCorrectAnswer = question.resultMessage.trimmingCharacters(in: .whitespacesAndNewlines).lowercased()

                isAnswerCorrect = lowercaseUserAnswer == lowercaseCorrectAnswer

                // Print for debugging
                print("User's Answer: \(lowercaseUserAnswer)")
                print("Correct Answer: \(lowercaseCorrectAnswer)")
                print("Is Answer Correct: \(isAnswerCorrect)")

                onNextQuestion() // Move to the next question
            }
            .padding()

            if isAnswerCorrect {
                Text("Correct! \(question.resultMessage)")
                    .foregroundColor(.green)
            } else if !userAnswer.isEmpty {
                Text("Oops! The correct answer is \(question.resultMessage).")
                    .foregroundColor(.red)
            }
        }
        .navigationBarTitle("Question")
    }
}

struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionView(question: questions[0], onNextQuestion: {})
    }
}
