//
//  CategoryCardTest.swift
//  GameStreamTests
//
//  Created by nicolas.e.manograsso on 24/11/2021.
//

import XCTest
@testable import GameStream
import SnapshotTesting
import SwiftUI

class CategoryCardTest: XCTestCase {
    func testComponent() {
        let sut = CategoryCard()
        assertSnapshot(matching: sut, as: .image)
    }

    func testRPGCategory() {
        let sut = CategoryCard(.rpg)
        assertSnapshot(matching: sut, as: .image)
    }

    func testFPSCategory() {
        let sut = CategoryCard(.fps)
        assertSnapshot(matching: sut, as: .image)
    }

    func testOpenWorldCategory() {
        let sut = CategoryCard(.openWorld)
        assertSnapshot(matching: sut, as: .image)
    }
}
