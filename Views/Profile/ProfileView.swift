//
//  ProfileView.swift
//  Plano
//
//  Created by Christien Jake Pacia on 4/4/26.
//
import SwiftUI

struct ProfileView: View {
    @StateObject private var vm = ProfileViewModel()

    var body: some View {
        VStack {
            Text(vm.title)
                .font(.title)
        }
    }
}
