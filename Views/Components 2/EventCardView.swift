//
//  EventCardView.swift
//  Plano
//
//  Created by Christien Jake Pacia on 4/4/26.
//

import SwiftUI

struct EventCardView: View {
    let event: PlanoEvent
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text(event.name)
                .font(.headline)
                .foregroundColor(.white)
            
            Text(event.description)
                .font(.subheadline)
                .foregroundColor(.white.opacity(0.8))
            
            HStack {
                Text("Event Date: \(event.startDate, formatter: dateFormatter)")
                Spacer()
            }
            .font(.caption)
            .foregroundColor(.white.opacity(0.7))
        }
        .padding()
        .background(Color.blue.cornerRadius(12))
        .shadow(radius: 5)
    }

    private var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.timeStyle = .short
        return formatter
    }
}
