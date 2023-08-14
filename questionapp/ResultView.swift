//
//  ResultView.swift
//  questionapp
//
//  Created by roperia on 2023-08-11.
//

import SwiftUI

struct ResultView: View {
    let message: String
    let correct: Bool

    var body: some View {
        VStack {
            Text(message)
                .font(.title)
                .padding()

            if correct {
                Image(systemName: "checkmark.circle.fill")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .foregroundColor(.green)
            } else {
                Image(systemName: "xmark.circle.fill")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .foregroundColor(.red)
            }
        }
        .navigationBarTitle("Result")
    }
}

struct ResultView_Previews: PreviewProvider {
    static var previews: some View {
        ResultView(message: "Great job! You answered the question.", correct: true)
    }
}
