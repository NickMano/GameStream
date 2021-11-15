//
//  HomeViewTest.swift
//  GameStreamTests
//
//  Created by nicolas.e.manograsso on 15/11/2021.
//

import XCTest
import SnapshotTesting
@testable import GameStream

final class HomeViewTest: XCTestCase {
    func testHomeView() {
        let sut = HomeView()
        assertSnapshot(matching: sut, as: .image)
    }
}
