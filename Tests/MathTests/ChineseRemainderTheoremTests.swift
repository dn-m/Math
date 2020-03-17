//
//  ChineseRemainderTheoremTests.swift
//  MathTests
//
//  Created by James Bean on 3/17/20.
//

import XCTest
import Math

class ChineseRemainderTheoremTests: XCTestCase {

    func testChineseRemainderTheorem() {
        XCTAssertEqual(chineseRemainderTheorem([2,3,2], [3,5,7]), 23)
    }
}
