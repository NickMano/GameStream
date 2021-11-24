//
//  TitleTest.swift
//  GameStreamTests
//
//  Created by nicolas.e.manograsso on 24/11/2021.
//

import XCTest
import SnapshotTesting
@testable import GameStream
import SwiftUI

class TitleTest: XCTestCase {
    func testComponent() {
        let sut = TitleWrapper("This is a test")
        assertSnapshot(matching: sut, as: .image)
    }
}

struct TitleWrapper: View {
    var text: String

    init(_ text: String) {
        self.text = text
    }

    var body: some View {
        ZStack {
            Color.backgroundBlue
            Title(text)
        }
    }
}
