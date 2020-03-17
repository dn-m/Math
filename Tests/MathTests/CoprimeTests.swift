//
//  CoprimeTests.swift
//  MathTests
//
//  Created by James Bean on 3/17/20.
//

import XCTest
import Math

class CoprimeTests: XCTestCase {

    func test18And35AreCoprime() {
        XCTAssert(coprime(18,35))
    }

    func test9And12AreNotCoprime() {
        XCTAssertFalse(coprime(9,12))
    }
}
