//
//  HomeViewModel.swift
//  Plano
//
//  Created by Christien Jake Pacia on 4/4/26.
//

import Foundation
import SwiftUI
internal import Combine

final class HomeViewModel: ObservableObject {
    @Published var title: String = "Home"
    @Published var events: [PlanoEvent] = []
    
    init(){
        loadEvents()
    }
    
    func loadEvents(){
        events = PlanoEvent.sampleData
    }
    
    func saveEvents(_ event: PlanoEvent){
        events.append(event)
        LocalStorageService.shared.saveEvents(events)
    }
    
    
}
