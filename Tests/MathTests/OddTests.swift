//
//  OddTests.swift
//  Math
//
//  Created by James Bean on 2/18/16.
//  Copyright © 2016 James Bean. All rights reserved.
//

import XCTest
@testable import Math

class OddTests: XCTestCase {

    func testIntOddTrue() {
        XCTAssertTrue(5.isOdd)
    }

    func testIntOddFalse() {
        XCTAssertFalse(4.isOdd)
    }
}
