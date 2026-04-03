//
//  ContentView.swift
//  Plano
//
//  Created by Christien Jake Pacia on 4/3/26.
//

import SwiftUI

struct ContentView: View {
    @State var clickCount = 0
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                Text("Dress Rental")
                    .font(.largeTitle)
                    .fontWeight(.bold)

                Text("Welcome to your Plano app")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                
                Button(action    : {
                    clickCount += 1
                }) {
                    Text("Clicked \(clickCount) times")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
            }
            .padding()
            .navigationTitle("Home")
        }
    }
}

#Preview {
    ContentView()
}
