//
//  ContentView.swift
//  questionapp
//
//  Created by roperia on 2023-08-11.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            QuestionListView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
