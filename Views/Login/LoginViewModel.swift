//
//  LoginViewModel.swift
//  Plano
//
//  Created by Christien Jake Pacia on 4/4/26.
//

import SwiftUI
import Foundation
internal import Combine

final class LoginViewModel: ObservableObject {
    @Published var username = ""
    @Published var password = ""
    @Published var user: User?

    func loginOffline() {
        let newUser = User(id: UUID().uuidString, username: username)
        LocalStorageService.shared.saveUser(newUser)
        self.user = newUser
    }

    func logout() {
        LocalStorageService.shared.clearUser()
        self.user = nil
    }
}
