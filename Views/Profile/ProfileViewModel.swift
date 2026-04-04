//
//  ProfileViewModel.swift
//  Plano
//
//  Created by Christien Jake Pacia on 4/4/26.
//
import Foundation
import SwiftUI
internal import Combine

final class ProfileViewModel: ObservableObject {
    @Published var title: String = "Profile"

    func loadData() {
        // call service here
    }
}
