//
//  ContentView.swift
//  SnowSeeker
//
//  Created by Mehmet Alp Sönmez on 30/09/2024.
//

import SwiftUI


struct ContentView: View {
    @State private var searchText = ""
    let allNames = ["Subh", "Vina", "Melvin", "Stefanie"]
    
    var filteredNames: [String] {
        if searchText.isEmpty {
            allNames
        } else {
            allNames.filter { name in
                name.localizedStandardContains(searchText)
            }
        }
    }
    var body: some View {
        NavigationStack {
            List(filteredNames, id: \.self) { name in
                Text(name)
            }
            .searchable(text: $searchText, prompt: "Look for something")
            .navigationTitle("Searching")
        }
        }
    }
#Preview {
    ContentView()
}
