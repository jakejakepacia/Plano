//
//  CircularProgressView.swift
//  Plano
//
//  Created by Christien Jake Pacia on 4/11/26.
//

import SwiftUI

struct CircularProgressView: View {
    var progress: Double // 0.0 → 1.0
    
    var body: some View {
        ZStack {
            // Background circle
            Circle()
                .stroke(Color.gray.opacity(0.2), lineWidth: 6)
            
            // Progress ring
            Circle()
                .trim(from: 0, to: progress)
                .stroke(
                    Color.blue,
                    style: StrokeStyle(lineWidth: 6, lineCap: .round)
                )
                .rotationEffect(.degrees(-90)) // start from top
                .animation(.easeInOut, value: progress)
            
            // Center text
            Text("\(Int(progress * 100))%")
                .font(.caption)
                .bold()
        }
        .frame(width: 50, height: 50)
    }
}
