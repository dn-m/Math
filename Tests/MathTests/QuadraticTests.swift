//
//  QuadraticTests.swift
//  Math
//
//  Created by James Bean on 1/7/17.
//  Copyright © 2017 James Bean. All rights reserved.
//

import XCTest
import Math

class QuadraticTests: XCTestCase {

    func testIsEmptyFloat() {
        let result: Set<Float> = quadratic(2,1,3)
        XCTAssert(result.isEmpty)
    }

    func testQuadraticFloat() {
        let result: Set<Float> = quadratic(5,6,1)
        XCTAssertEqual(result, [-1, -0.2])
    }

    func testIsEmptyDouble() {
        let result: Set<Double> = quadratic(2,1,3)
        XCTAssert(result.isEmpty)
    }

    func testQuadraticDouble() {
        let result: Set<Double> = quadratic(5,6,1)
        XCTAssertEqual(result, [-1, -0.2])
    }

}
