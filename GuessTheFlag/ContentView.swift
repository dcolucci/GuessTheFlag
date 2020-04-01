// progress: https://www.hackingwithswift.com/books/ios-swiftui/buttons-and-images
//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Colucci, David on 3/31/20.
//  Copyright © 2020 Colucci, David. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Button(action: {
            print("button was tapped")
        }) {
            HStack(spacing: 10) {
                Image(systemName: "pencil")
                Text("Edit")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
