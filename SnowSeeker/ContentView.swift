//
//  ContentView.swift
//  SnowSeeker
//
//  Created by Mehmet Alp Sönmez on 30/09/2024.
//

import SwiftUI



struct ContentView: View {
    let resorts: [Resort] = Bundle.main.decode("resorts.json")
    var body: some View {
        NavigationSplitView {
            List(resorts) { resort in
                NavigationLink(value: resort) {
                    HStack {
                        Image(resort.country)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 40, height: 25)
                            .clipShape(.rect(cornerRadius: 5))
                            .overlay(
                                RoundedRectangle(cornerRadius: 5)
                                .stroke(.black, lineWidth: 1)
                            )
                        VStack(alignment: .leading) {
                            Text(resort.name)
                                .font(.headline)
                            Text("\(resort.runs) runs")
                                .foregroundStyle(.secondary)
                        }
                    }
                    
                }
                
            }
            .navigationTitle("Resorts")
        } detail: {
            Text("Detail")
        }
    }
}
#Preview {
    ContentView()
}
