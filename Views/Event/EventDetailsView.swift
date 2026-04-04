//
//  EventDetailsView.swift
//  Plano
//
//  Created by Christien Jake Pacia on 4/4/26.
//

import SwiftUI

struct EventDetailsView: View {
    let event: PlanoEvent
    
    var body: some View {
        Text("Hello, World! \(event.name)")
    }
}
