//
//  MeanTests.swift
//  Math
//
//  Created by James Bean on 12/23/16.
//  Copyright © 2016 James Bean. All rights reserved.
//

import XCTest
import Math

class MeanTests: XCTestCase {

    func testMeanEasy() {
        let a = 2.0
        let b = 4.0
        XCTAssertEqual(mean(a,b), 3.0)
    }

    func testMeanHarder() {
        let a = 2.0
        let b = 5.5
        XCTAssertEqual(mean(a,b), 3.75)
    }

    func testMeanFloat() {
        let array: [Float] = [2.3, 2.7]
        XCTAssertEqual(array.mean!, 2.5)
    }
}
