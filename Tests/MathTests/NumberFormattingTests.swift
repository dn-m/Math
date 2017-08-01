//
//  NumberFormattingTests.swift
//  Math
//
//  Created by James Bean on 12/1/16.
//  Copyright © 2016 James Bean. All rights reserved.
//

import XCTest
import Math

class NumberFormattingTests: XCTestCase {

    func testFormattedIntLeadingZeros() {

        let digits = 3

        (0..<1000).forEach { value in
            let formatted = value.formatted(digits: digits)
            XCTAssertEqual(formatted.characters.count, digits)
        }
    }

    func testFormattedFloatDigits() {

        let digits = 4

        stride(from: Float(0.0), to: 0.1, by: 0.001).forEach { value in
            let formatted = value.formatted(digits: digits)
            XCTAssertEqual(formatted.characters.count, digits + 2)
        }
    }

    func testFormattedDoubleDigits() {

        let digits = 4

        stride(from: Double(0.0), to: 0.1, by: 0.001).forEach { value in
            let formatted = value.formatted(digits: digits)
            XCTAssertEqual(formatted.characters.count, digits + 2)
        }
    }
}
