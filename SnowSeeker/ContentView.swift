//
//  ContentView.swift
//  SnowSeeker
//
//  Created by Mehmet Alp Sönmez on 30/09/2024.
//

import SwiftUI

struct User: Identifiable {
    var id = "Taylor Swift"
    
}

struct ContentView: View {
    @State private var selectedUser: User? = nil
    @State private var isShowingUser = false
    
    var body: some View {
        Button("Tap me ") {
            selectedUser = User()
            isShowingUser = true
        }
        .sheet(item: $selectedUser) { user in
            Text(user.id)
                .presentationDetents([.height(60), .large])
        }
    }
}

#Preview {
    ContentView()
}
