//
//  MainTabView.swift
//  Plano
//
//  Created by Christien Jake Pacia on 4/4/26.
//
import SwiftUI
struct MainTabView: View {
    @EnvironmentObject var vm: LoginViewModel
    var body: some View {
        TabView {
            Tab("Home", systemImage: "house") {
                NavigationStack {
                    HomeView()
                }
            }
            
            Tab("Profile", systemImage: "person") {
                NavigationStack {
                    ProfileView()
                }
            }
        }
    }
}

#Preview {
    MainTabView()
}
