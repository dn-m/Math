//
//  SequenceTypeTests.swift
//  Math
//
//  Created by James Bean on 2/18/16.
//  Copyright © 2016 James Bean. All rights reserved.
//

import XCTest
@testable import Math

class SequenceTypeTests: XCTestCase {

    func testIntSumEmpty() {
        let array: [Int] = []
        XCTAssertEqual(array.sum, 0)
    }

    func testIntSum() {
        let array: [Int] = [1,3,4]
        XCTAssertEqual(array.sum, 8)
    }

    func testFloatSumEmpty() {
        let array: [Float] = []
        XCTAssertEqual(array.sum, 0.0)
    }

    func testFloatSum() {
        let array: [Float] = [1.0,3.0,4.0]
        XCTAssertEqual(array.sum, 8)
    }

    func testGCDIntPair() {
        let array: [Int] = [8,12]
        XCTAssertEqual(array.gcd, 4)
    }

    func testClosestOver() {
        let array: [Float] = [2.5, 6.7, 9.2, 5.24]
        let closest = array.closest(to: 7.1)!
        XCTAssertEqual(closest, 6.7)
    }

    func testClosestEmpty() {
        let array: [Float] = []
        let closest = array.closest(to: 3.5)
        XCTAssertNil(closest)
    }

    func testClosestUnder() {
        let array = [1,4,7]
        let closest = array.closest(to: 6)
        XCTAssertEqual(closest, 7)
    }
}
