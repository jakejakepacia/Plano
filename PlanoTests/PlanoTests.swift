//
//  PlanoTests.swift
//  PlanoTests
//
//  Created by Christien Jake Pacia on 4/3/26.
//

import XCTest
@testable import Plano

final class PlanoTests: XCTestCase {


    func testOfflineLoginSetsUser() throws {
        // 1. Prepare your ViewModel
        let loginVM = LoginViewModel()
        loginVM.username = "testuser"

        // 2. Call the method you want to test
        loginVM.loginOffline()

        // 3. Assert the result
        XCTAssertNotNil(loginVM.user) // user should now exist
        XCTAssertEqual(loginVM.user?.username, "testuser")
    }
}
