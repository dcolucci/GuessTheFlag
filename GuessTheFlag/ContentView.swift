// progress: https://www.hackingwithswift.com/books/ios-swiftui/showing-alert-messages
//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Colucci, David on 3/31/20.
//  Copyright © 2020 Colucci, David. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Russia", "Spain", "UK", "US"]
    var correctAnswer = Int.random(in: 0...2)

    var body: some View {
        VStack(spacing: 30) {
            ForEach(0 ..< 5) { number in
                Spacer()
            }
            VStack {
                Text("Tap the flag of")
                Text(countries[correctAnswer])
            }

            ForEach(0 ..< 3) { number in
                Button(action: {
                    // tbd
                }) {
                    HStack(spacing: 60) {
                        Spacer()
                        ZStack {
                            Color.init(white: 0.90)
                                .cornerRadius(10)
                            Image(self.countries[number]).renderingMode(.original)
                                .offset(y: 15)
                                .padding(.bottom, 30)
                        }
                        Spacer()
                    }
                }
            }
            ForEach(0 ..< 5) { number in
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
