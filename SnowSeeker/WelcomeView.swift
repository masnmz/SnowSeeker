//
//  WelcomeView.swift
//  SnowSeeker
//
//  Created by Mehmet Alp Sönmez on 03/10/2024.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        VStack {
            Text("Welcome to SnowSeeker")
                .font(.largeTitle)
            
            Text("Please Select a resort from the left-hand menu; swipe from the edge to show it.")
                .foregroundStyle(.secondary)
        }
    }
}

#Preview {
    WelcomeView()
}
