//
//  TabBarViewTest.swift
//  GameStreamTests
//
//  Created by nicolas.e.manograsso on 15/11/2021.
//

import XCTest
import SnapshotTesting
@testable import GameStream

class TabBarViewTest: XCTestCase {
    func testTabBar() {
        let sut = TabBarView()
        assertSnapshot(matching: sut, as: .image)
    }
}
