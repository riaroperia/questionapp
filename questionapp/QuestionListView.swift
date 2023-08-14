//
//  QuestionListView.swift
//  questionapp
//
//  Created by roperia on 2023-08-11.
//
import SwiftUI

struct QuestionListView: View {
    @State private var currentQuestionIndex: Int = 0

    var body: some View {
        VStack {
            if currentQuestionIndex < questions.count {
                QuestionView(question: questions[currentQuestionIndex], onNextQuestion: nextQuestion)
            } else {
                Text("Congratulations! You answered all questions.")
                    .font(.headline)
                    .padding()
            }
        }
        .navigationBarTitle("Question App")
    }

    private func nextQuestion() {
        currentQuestionIndex += 1
    }
}

struct QuestionListView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionListView()
    }
}

