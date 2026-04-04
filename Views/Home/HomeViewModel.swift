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

    func loadData() {
        // call service here
    }
}
