//
//  RangeProtocolTests.swift
//  ArithmeticTools
//
//  Created by James Bean on 7/18/17.
//  Copyright © 2017 James Bean. All rights reserved.
//

import XCTest
import ArithmeticTools

class RangeProtocolTests: XCTestCase {

    func testShiftedBy() {
        let range: CountableClosedRange<Int> = 1...4
        let shifted = range.shifted(by: 2)
        let expected = 3...6
        XCTAssertEqual(shifted, expected)
    }

    func testLiteralShiftedBy() {
        let shifted = (1..<4).shifted(by: -2)
        let expected = -1..<2
        XCTAssertEqual(shifted, expected)
    }
}
