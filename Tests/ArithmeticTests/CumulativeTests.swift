//
//  CumulativeTests.swift
//  ArithmeticTools
//
//  Created by James Bean on 12/1/16.
//  Copyright © 2016 James Bean. All rights reserved.
//

import XCTest
import Collections
import ArithmeticTools

class CumulativeTests: XCTestCase {

    func testIntArrayCumulativeRight() {
        let array = [1,2,3]
        XCTAssertEqual(array.accumulatingRight, [0,1,3])
    }

    func testFloatArrayCumulativeRight() {

        let array = [1.1, 2.2, 3.3]
        let expected = [0, 1.1, 3.3]

        zip(array.accumulatingRight, expected).forEach { actual, expected in
            XCTAssertEqualWithAccuracy(actual, expected, accuracy: 0.000001)
        }
    }

    func testIntArrayCumulativeLeft() {
        let array = [1,2,3]
        XCTAssertEqual(array.accumulatingLeft, [0,3,5])
    }

    func testFloatArrayCumulativeLeft() {

        let array = [1.1, 2.2, 3.3]
        let expected = [0, 3.3, 5.5]

        zip(array.accumulatingLeft, expected).forEach { actual, expected in
            XCTAssertEqualWithAccuracy(actual, expected, accuracy: 0.000001)
        }
    }
}
