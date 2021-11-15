//
//  LoginViewTest.swift
//  GameStreamTests
//
//  Created by nicolas.e.manograsso on 15/11/2021.
//

import XCTest
@testable import GameStream
import SnapshotTesting
import SwiftUI

class LoginViewTest: XCTestCase {
    func testLoginSection() {
        let sut = LoginView()
        assertSnapshot(matching: sut, as: .image)
    }

    func testRegisterSection() {
        let sut = LoginView(.registerOption)
        assertSnapshot(matching: sut, as: .image)
    }
}
