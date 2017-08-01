//
//  LeastCommonMultipleTests.swift
//  ArithmeticTools
//
//  Created by James Bean on 1/28/17.
//  Copyright © 2017 James Bean. All rights reserved.
//

import XCTest
import ArithmeticTools

class LeastCommonMultipleTests: XCTestCase {

    func testLeastCommonMultipleEqual() {
        let a = 5
        let b = 5
        XCTAssertEqual(lcm(a,b), 5)
    }

    func testLeastCommonMultipleNotEqualAlreadySimplified() {
        let a = 3
        let b = 17
        XCTAssertEqual(lcm(a,b), 3 * 17)
    }

    func testLeastCommonMultipleNotEqualNotSimplified() {
        let a = 6
        let b = 4
        XCTAssertEqual(lcm(a,b), 12)
    }

    func testLeastCommonMultipleSequence() {
        let array = [6,4,5]
        XCTAssertEqual(array.lcm, 60)
    }
}
