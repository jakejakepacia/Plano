//
//  LocalStorageService.swift
//  Plano
//
//  Created by Christien Jake Pacia on 4/4/26.
//

import Foundation

final class LocalStorageService {
    static let shared = LocalStorageService()
    private init() {}
    
    private let eventsKey = "events"

    func saveUser(_ user: User) {
        if let data = try? JSONEncoder().encode(user) {
            UserDefaults.standard.set(data, forKey: "currentUser")
        }
    }

    func loadUser() -> User? {
        guard let data = UserDefaults.standard.data(forKey: "currentUser") else { return nil }
        return try? JSONDecoder().decode(User.self, from: data)
    }

    func clearUser() {
        UserDefaults.standard.removeObject(forKey: "currentUser")
    }
    
    func saveEvents(_ events: [PlanoEvent]){
        if let daata = try? JSONEncoder().encode(events) {
            UserDefaults.standard.set(daata, forKey: eventsKey)
        }
    }
    
    func loadEvents() -> [PlanoEvent]? {
        guard let data = UserDefaults.standard.data(forKey: eventsKey) else { return nil }
        return try? JSONDecoder().decode([PlanoEvent].self, from: data)
    }
}
