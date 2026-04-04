//
//  Plano.swift
//  Plano
//
//  Created by Christien Jake Pacia on 4/4/26.
//

import Foundation

struct PlanoEvent: Codable , Identifiable{
    var id: Int
    var name: String
    var description: String
    var startDate: Date
    var endDate: Date
}

extension PlanoEvent {
    static let sampleData: [PlanoEvent] = [
        PlanoEvent(id: 1, name: "SwiftUI Workshop", description: "Learn SwiftUI basics and advanced concepts.", startDate: Date(), endDate: Date().addingTimeInterval(3600)),
        PlanoEvent(id: 2, name: "Design Sprint", description: "A fast-paced design thinking session.", startDate: Date().addingTimeInterval(86400), endDate: Date().addingTimeInterval(90000)),
        PlanoEvent(id: 3, name: "iOS Meetup", description: "Networking with local iOS developers.", startDate: Date().addingTimeInterval(172800), endDate: Date().addingTimeInterval(180000))
    ]
}
