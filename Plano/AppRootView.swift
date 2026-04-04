//
//  AppRootView.swift
//  Plano
//
//  Created by Christien Jake Pacia on 4/4/26.
//

import SwiftUI

struct AppRootView: View {
    @StateObject private var loginVM = LoginViewModel()

    var body: some View {
        Group {
            if let _ = loginVM.user {
                // User is logged in → show the main app
                MainTabView()
                    .environmentObject(loginVM) // optional if you need user in tabs
            } else {
                // User not logged in → show login screen
                LoginView()
                    .environmentObject(loginVM)
            }
        }
        .onAppear {
            // Check if user already exists in local storage
            if let existingUser = LocalStorageService.shared.loadUser() {
                loginVM.user = existingUser
            }
        }
    }
}

#Preview {
    AppRootView()
}