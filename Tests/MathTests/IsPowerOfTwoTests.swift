//
//  IsPowerOfTwoTests.swift
//  Math
//
//  Created by Brian Heim on 12/11/16.
//  Copyright © 2016 James Bean. All rights reserved.
//

import XCTest
@testable import Math

class IsPowerOfTwoTests: XCTestCase {

    func testIntIsPowerOfTwoTrue() {
        XCTAssertTrue(1.isPowerOfTwo)
        XCTAssertTrue(2.isPowerOfTwo)
        XCTAssertTrue(4.isPowerOfTwo)
        XCTAssertTrue(1024.isPowerOfTwo)
    }

    func testIntIsPowerOfTwo64Bit() {
        #if (arch(x86_64) || arch(arm64))
            XCTAssertTrue(4294967296.isPowerOfTwo)
        #endif
    }

    func testIntIsPowerOfTwoFalse() {
        XCTAssertFalse(3.isPowerOfTwo)
        XCTAssertFalse(17.isPowerOfTwo)
        XCTAssertFalse(999.isPowerOfTwo)
        XCTAssertFalse(1028.isPowerOfTwo)
        XCTAssertFalse((-3).isPowerOfTwo)
        XCTAssertFalse((-17).isPowerOfTwo)
        XCTAssertFalse((-999).isPowerOfTwo)
        XCTAssertFalse((-1028).isPowerOfTwo)
        XCTAssertFalse((Int64.min).isPowerOfTwo)
    }

    func testIntIsPowerOfTwoZero() {
        XCTAssertFalse(0.isPowerOfTwo)
    }
}
