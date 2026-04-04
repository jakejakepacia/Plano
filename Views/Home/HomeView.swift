//
//  HomeView.swift
//  Plano
//
//  Created by Christien Jake Pacia on 4/4/26.
//
import SwiftUI
struct HomeView: View {
    @StateObject private var vm = HomeViewModel()

    var body: some View {
        VStack {
            Text(vm.title)
                .font(.title)
        }
    }
}
