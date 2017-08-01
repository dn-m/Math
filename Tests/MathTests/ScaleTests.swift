//
//  ScaleTests.swift
//  Math
//
//  Created by James Bean on 5/7/17.
//  Copyright © 2017 James Bean. All rights reserved.
//

import XCTest
import Math

class ScaleTests: XCTestCase {

    func testFloatEqualsSelfInEquivalentRanges() {
        let range: ClosedRange<Float> = 0...1
        let value: Float = 0.5
        XCTAssertEqual(value.scaled(from: range, to: range), value)
    }

    func testFloatScaled() {
        let sourceRange: ClosedRange<Float> = 0...1
        let destinationRange: ClosedRange<Float> = 0...100
        let value: Float = 0.5
        XCTAssertEqual(value.scaled(from: sourceRange, to: destinationRange), 50)
    }

    func testDoubleScaledLinearToExponential() {
        let source = 0.0...1.0
        let destination = 1.0...2.0
        let values = [0.0, 0.5, 1.0]
        let expecteds = [1.0, sqrt(2), 2]

        for (value, expected) in zip(values, expecteds) {
            let result = value.scaled(from: source, toExponential: destination)
            XCTAssertEqual(result, expected)
        }
    }

}
