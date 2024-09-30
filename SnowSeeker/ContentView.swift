//
//  ContentView.swift
//  SnowSeeker
//
//  Created by Mehmet Alp Sönmez on 30/09/2024.
//

import SwiftUI

struct UserView: View {
    var body: some View {
        Group {
            Text("Name: Paul")
            Text("Country: England")
            Text("Pets: Luna and Arya")
        }
        .font(.title)
        
    }
    
}

struct ContentView: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    
    var body: some View {
        ViewThatFits {
            Rectangle()
                .fill(.red)
                .frame(width: 500, height: 200)
            Circle()
                .fill(.blue)
                .frame(width: 200, height: 200)
        }
        }
    }
#Preview {
    ContentView()
}
