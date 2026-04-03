//
//  ContentView.swift
//  Plano
//
//  Created by Christien Jake Pacia on 4/3/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                Text("Dress Rental")
                    .font(.largeTitle)
                    .fontWeight(.bold)

                Text("Welcome to your app 👗")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            .padding()
            .navigationTitle("Home")
        }
    }
}

#Preview {
    ContentView()
}
