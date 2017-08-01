//
//  ModuloTests.swift
//  Math
//
//  Created by James Bean on 1/8/17.
//  Copyright © 2017 James Bean. All rights reserved.
//

import XCTest
import Math

class ModuloTests: XCTestCase {

    func testModInteger() {
        XCTAssertEqual(mod(5, 3), 2)
        XCTAssertEqual(mod(8, 3), 2)
    }

    func testModIntegerNegative() {
        XCTAssertEqual(mod(-4, 3), 2)
        XCTAssertEqual(mod(-7, 3), 2)
    }

    func testModFloatingPoint() {
        XCTAssertEqual(mod(15.5, 12), 3.5)
        XCTAssertEqual(mod(27.5, 12), 3.5)
    }

    func testModFloatingPointNegative() {
        XCTAssertEqual(mod(-15.5, 12), 8.5)
        XCTAssertEqual(mod(-27.5, 12), 8.5)
    }
}
