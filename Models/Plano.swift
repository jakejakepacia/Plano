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
    var budget: Double
    var budgetSpent: Double? = 0.0
    var planoCards: [PlanoCard]?
}

extension PlanoEvent {
    static let sampleData: [PlanoEvent] = [
        PlanoEvent(id: 1, name: "SwiftUI Workshop", description: "Learn SwiftUI basics and advanced concepts.", startDate: Date(), endDate: Date().addingTimeInterval(3600), budget: 1000.00, planoCards: PlanoCard.sampleData),
        PlanoEvent(id: 2, name: "Design Sprint", description: "A fast-paced design thinking session.", startDate: Date().addingTimeInterval(86400), endDate: Date().addingTimeInterval(90000), budget: 1500.00),
        PlanoEvent(id: 3, name: "iOS Meetup", description: "Networking with local iOS developers.", startDate: Date().addingTimeInterval(172800), endDate: Date().addingTimeInterval(180000), budget: 2000.00)
    ]
}

struct PlanoCard: Codable, Identifiable{
    var id: Int
    var budget: Double
    var spent: Double
    var description: String
    var name: String
}

extension PlanoCard{
    static let sampleData: [PlanoCard] = [
        PlanoCard(id: 1, budget: 600, spent: 300, description: "Food", name: "Catering"),
        PlanoCard(id: 2, budget: 800, spent: 500, description: "Venue", name: "Venue"),
        PlanoCard(id: 3, budget: 500, spent: 500, description: "Light and sound", name: "Light and Sounds"),
        PlanoCard(id: 4, budget: 500, spent: 300, description: "Host", name: "Event Host"),
            
        ]
}
