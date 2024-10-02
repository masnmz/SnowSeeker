//
//  ContentView.swift
//  SnowSeeker
//
//  Created by Mehmet Alp Sönmez on 30/09/2024.
//

import SwiftUI

@Observable
class Player {
    var name = "Anonymous"
    var highScore = 0
}

struct HighScoreView: View {
   
    @Environment(Player.self) var player
    
    var body: some View {
        @Bindable var player = player
        Stepper("High Score: \(player.highScore)", value: $player.highScore )
    }
}

struct ContentView: View {
    @State private var player = Player()
    var body: some View {
        VStack {
            Text("Welcome")
            HighScoreView()
        }
        .environment(player)
        .padding()
        }
    }
#Preview {
    ContentView()
}
