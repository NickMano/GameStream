//
//  HomeViewTest.swift
//  GameStreamTests
//
//  Created by nicolas.e.manograsso on 15/11/2021.
//

import XCTest
import SnapshotTesting
import SwiftUI
@testable import GameStream

final class HomeViewTest: XCTestCase {
    func testHomeView() {
        let sut = HomeView()
        let host = UIHostingController(rootView: sut)
        assertSnapshot(matching: host, as: .image)
        assertSnapshot(matching: host, as: .recursiveDescription)
    }
}
