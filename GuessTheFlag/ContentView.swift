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
        VStack {
            RadialGradient(gradient: Gradient(colors: [.purple, .yellow, .white]), center: .center, startRadius: 50, endRadius: 300)
            AngularGradient(gradient: Gradient(colors: [.purple, .yellow, .white, .purple]), center: .center)
        }.edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
