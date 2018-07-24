//
//  PowerTests.swift
//  Math
//
//  Created by James Bean on 3/2/16.
//  Copyright © 2016 James Bean. All rights reserved.
//

import XCTest
@testable import Math

class PowerTests: XCTestCase {

    func testClosestPowerOfTwoUnder() {
        let closest = closestPowerOfTwo(under: 7)!
        XCTAssertEqual(closest, 4)
    }

    func testClosestPowerOf2() {
        let closest = closestPowerOfTwo(to: 19)!
        XCTAssertEqual(closest, 16)
    }

    func testClosestPowerOf2_coeff2() {
        let closest = closestPowerOfTwo(coefficient: 2, to: 13)!
        XCTAssertEqual(closest, 16)
    }

    func testClosestPowerOf2_coeff3() {
        let closest = closestPowerOfTwo(coefficient: 3, to: 11)!
        XCTAssertEqual(closest, 12)
    }

    func testClosestPowerOf2_coeff11() {
        let closest = closestPowerOfTwo(coefficient: 11, to: 13)!
        XCTAssertEqual(closest, 11)
    }

    func testClosestPowerOf3_coeff17() {
        let closest = closestPowerOfTwo(coefficient: 17, to: 6)!
        XCTAssertEqual(closest, 17)
    }

    func testInBetween() {
        let closest = closestPowerOfTwo(to: 12)!
        XCTAssertEqual(closest, 8)
    }
}
