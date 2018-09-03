//
//  PowerOfTwoSequenceTests.swift
//  Math
//
//  Created by James Bean on 3/2/16.
//  Copyright © 2016 James Bean. All rights reserved.
//

import XCTest
@testable import Math

class PowerOfTwoSequenceTests: XCTestCase {

    func testFilter() {
        let powerSequence = PowerOfTwoSequence(coefficient: 1, max: 128)
        let filtered = powerSequence.filter { $0 >= 4 && $0 <= 32 }
        XCTAssertEqual(filtered, [4,8,16,32])
    }

    func testNon2Base_3() {
        let powerSequence = PowerOfTwoSequence(coefficient: 3, max: 24)
        let mapped = powerSequence.map { $0 }
        XCTAssertEqual(mapped, [3,6,12,24])
    }

    func testNon2Base_7() {
        let powerSequence = PowerOfTwoSequence(coefficient: 7, max: 56).map { $0 }
        XCTAssertEqual(powerSequence, [7,14,28,56])
    }

    func testOvershoot() {
        let powerSequence = PowerOfTwoSequence(coefficient: 2, max: 13, doOvershoot: true).map { $0 }
        XCTAssertEqual(powerSequence, [2,4,8,16])
    }

    func testPowerOfTwoSequenceContains() {
        let seq = PowerOfTwoSequence<Int>()
        XCTAssertFalse(seq.contains(31))
        XCTAssert(seq.contains(16))
    }

    func testPowerOfTwoSequenceMapContains() {
        let seq = PowerOfTwoSequence<Int>().map { $0 - 1 }
        XCTAssert(seq.contains(1))
        XCTAssert(seq.contains(3))
        XCTAssert(seq.contains(7))
        XCTAssert(seq.contains(15))
        XCTAssert(seq.contains(31))
        XCTAssert(seq.contains(63))
        XCTAssert(seq.contains(127))
    }

    func testManyPowersOfTwo() {
        (0..<1_000_000).forEach { n in
            let _ = powersOfTwo(upTo: n)
        }
    }

    func testManyClosestPowerOfTwo() {
        (0..<1_000_000).forEach { n in
            let _ = closestPowerOfTwo(to: n)
        }
    }
}
