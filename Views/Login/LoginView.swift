//
//  LoginView.swift
//  Plano
//
//  Created by Christien Jake Pacia on 4/4/26.
//

import SwiftUI

struct LoginView: View {
    @EnvironmentObject var vm: LoginViewModel

    var body: some View {
        VStack(spacing: 20) {
            TextField("Username", text: $vm.username)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal)
            
            SecureField("Password", text: $vm.password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal)

            Button("Login") {
                vm.loginOffline()
            }
            .padding()
            .background(Color.blue.opacity(0.8))
            .foregroundColor(.white)
            .cornerRadius(8)

            if let user = vm.user {
                Text("Logged in as: \(user.username)")
                    .foregroundColor(.green)
            }
        }
    }
}
