//
//  Extensions.swift
//  Plano
//
//  Created by Christien Jake Pacia on 4/11/26.
//

import SwiftUI

extension View {
    func cardStyle() -> some View {
        self
            .padding()
            .background(Color(.systemBackground))
            .clipShape(RoundedRectangle(cornerRadius: 16))
            .shadow(color: .black.opacity(0.05), radius: 5, x: 0, y: 2)
    }
}
