// progress: https://www.hackingwithswift.com/books/ios-swiftui/showing-the-players-score-with-an-alert
//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Colucci, David on 3/31/20.
//  Copyright © 2020 Colucci, David. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Russia", "Spain", "UK", "US"].shuffled()
    @State private var correctAnswer = Int.random(in: 0...2)
    @State private var showingScore = false
    @State private var scoreTitle = ""
    @State private var score = 0

    var body: some View {
        VStack(spacing: 30) {
            ForEach(0 ..< 4) { number in
                Spacer()
            }
            VStack {
                Text("Tap the flag of")
                Text(countries[correctAnswer])
                    .font(.largeTitle)
                    .fontWeight(.black)
            }

            ForEach(0 ..< 3) { number in
                Button(action: {
                    self.flagTapped(number)
                }) {
                    HStack(spacing: 60) {
                        Spacer()
                        ZStack {
                            Color.init(white: 0.90)
                                .cornerRadius(10)
                            Image(self.countries[number])
                                .renderingMode(.original)
                                .offset(y: 15)
                                .padding(.bottom, 30)
                        }
                        Spacer()
                    }
                }
            }
            Text("Current score: \(score)")
                .font(.title)
            ForEach(0 ..< 4) { number in
                Spacer()
            }
        }
        .alert(isPresented: $showingScore) {
            Alert(title: Text(scoreTitle), message: Text("Your score is \(score)"), dismissButton: .default(Text("Continue")) {
                self.askQuestion()
            })
        }
    }

    func flagTapped(_ number: Int) {
        if number == correctAnswer {
            scoreTitle = "Correct"
            score += 1
        } else {
            scoreTitle = "Wrong! That's the flag of \(countries[number])"
        }

        showingScore = true
    }

    func askQuestion() {
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
