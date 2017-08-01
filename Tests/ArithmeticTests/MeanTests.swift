//
//  MeanTests.swift
//  ArithmeticTools
//
//  Created by James Bean on 12/23/16.
//  Copyright © 2016 James Bean. All rights reserved.
//

import XCTest
import ArithmeticTools

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
}
