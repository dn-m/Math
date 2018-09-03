//
//  RationalTests.swift
//  Math
//
//  Created by James Bean on 1/2/17.
//  Copyright © 2017 James Bean. All rights reserved.
//

import XCTest
import Math

class RationalTests: XCTestCase {

    func testInit() {
        _ = Fraction(1,1)
    }

    func testEqualsSame() {
        let a = Fraction(1,2)
        let b = Fraction(1,2)
        XCTAssertEqual(a,b)
    }

    func testEqualsNotSimplified() {
        let a = Fraction(3,16)
        let b = Fraction(9,48)
        XCTAssertEqual(a,b)
    }

    func testNotEqual() {
        let a = Fraction(1,16)
        let b = Fraction(2,16)
        XCTAssertNotEqual(a,b)
    }

    func testFloatValueOne() {
        let r = Fraction(1,1)
        XCTAssertEqual(r.floatValue, 1)
    }

    func testFloatValueDecimal() {
        let r = Fraction(1,3)
        XCTAssertEqual(r.floatValue, 1/3)
    }

    func testFloatValueNegative() {
        let r = Fraction(-1,5)
        XCTAssertEqual(r.floatValue, -(1/5))
    }

    func testInverse() {
        let r = Fraction(1,13)
        XCTAssertEqual(r.inverse, Fraction(13,1))
    }

    func testInverseNegative() {
        let r = Fraction(1,-13)
        XCTAssertEqual(r.inverse, Fraction(-13,1))
    }

    func testReduced() {
        let r = Fraction(3, 21).reduced
        XCTAssertEqual(r.numerator, 1)
        XCTAssertEqual(r.denominator, 7)
    }

    func testReducedNegative() {
        let r = Fraction(-3, 21).reduced
        XCTAssertEqual(r.numerator, -1)
        XCTAssertEqual(r.denominator, 7)
    }

    func testReducedNegativeDenominator() {
        let r = Fraction(3, -21).reduced
        XCTAssertEqual(r.numerator, -1)
        XCTAssertEqual(r.denominator, 7)
    }

    func testReducedDoubleNegative() {
        let r = Fraction(-3, -21).reduced
        XCTAssertEqual(r.numerator, 1)
        XCTAssertEqual(r.denominator, 7)
    }

    func testComparableSameDenominator() {
        let a = Fraction(1,2)
        let b = Fraction(2,3)
        XCTAssertLessThan(a,b)
        XCTAssertGreaterThan(b,a)
    }

    func testComparableSameNumerator() {
        let a = Fraction(2,5)
        let b = Fraction(2,17)
        XCTAssert(b < a)
        XCTAssert(a > b)
    }

    func testComparableHarder() {
        let a = Fraction(13,19)
        let b = Fraction(7,21)
        XCTAssert(b < a)
        XCTAssert(a > b)
    }

    func testHashValueEqual() {
        let a = Fraction(1,2)
        let b = Fraction(3,6)
        XCTAssertEqual(a.hashValue, b.hashValue)
    }

    func testHashValueNotEqual() {
        let a = Fraction(1,13)
        let b = Fraction(11,10948)
        XCTAssertNotEqual(a.hashValue, b.hashValue)
    }

    func testRespellWithNumeratorEqualToSelfValid() {
        let original = Fraction(1,13)
        let new = original.scaling(numerator: 1)
        XCTAssertEqual(new.numerator, 1)
        XCTAssertEqual(new.denominator, 13)
    }

    func testRespellWithNumeratorGreaterThanValid() {
        let original = Fraction(1,13)
        let new = original.scaling(numerator: 3)
        XCTAssertEqual(new.numerator, 3)
        XCTAssertEqual(new.denominator, 39)
    }

    func testRespellWithNumeratorLessThanValid() {
        let original = Fraction(5,15)
        let new = original.scaling(numerator: 1)
        XCTAssertEqual(new.numerator, 1)
        XCTAssertEqual(new.denominator, 3)
    }

    func testRespellWithDenominatorEqualToSelfValid() {
        let original = Fraction(1,13)
        let new = original.scaling(denominator: 13)
        XCTAssertEqual(new.numerator, 1)
        XCTAssertEqual(new.denominator, 13)
    }

    func testRespellWithDenominatorLessThanValid() {
        let original = Fraction(5,10)
        let new = original.scaling(denominator: 6)
        XCTAssertEqual(new.numerator, 3)
        XCTAssertEqual(new.denominator, 6)
    }

    func testRespellWithDenominatorGreaterThanValid() {
        let original = Fraction(3,12)
        let new = original.scaling(denominator: 48)
        XCTAssertEqual(new.numerator, 12)
        XCTAssertEqual(new.denominator, 48)
    }

    // MARK: - Math

    func testReciprocal() {
        XCTAssertEqual(Fraction(1,5).reciprocal, Fraction(5,1))
    }

    func testAddSameDenominator() {

        let a = Fraction(2,5)
        let b = Fraction(4,5)

        XCTAssertEqual(a + b, Fraction(6,5))
    }

    func testAddSameDenominatorAndAssign() {

        var a = Fraction(2,5)
        let b = Fraction(4,5)
        a += b

        XCTAssertEqual(a, Fraction(6,5))
    }

    func testAddDifferentDenominators() {

        let a = Fraction(2,5) // 14/35
        let b = Fraction(2,7) // 10/35

        XCTAssertEqual(a + b, Fraction(24,35))
    }

    func testSubtractSameDenominator() {

        let a = Fraction(2,5)
        let b = Fraction(4,5)

        XCTAssertEqual(a - b, Fraction(-2,5))
    }

    func testSubtractDifferentDenominators() {

        let a = Fraction(2,5) // 14/35
        let b = Fraction(2,7) // 10/35

        XCTAssertEqual(a - b, Fraction(4,35))
    }

    func testSubtractDifferentDenominatorsAndAssign() {

        var a = Fraction(2,5) // 14/35
        let b = Fraction(2,7) // 10/35
        a -= b

        XCTAssertEqual(a, Fraction(4,35))
    }

    func testMultiplySameDenominators() {

        let a = Fraction(3,4)
        let b = Fraction(12,4)

        XCTAssertEqual(a * b, Fraction(36,16))
    }

    func testMultitplyDifferentDenominators() {

        let a = Fraction(2,5) // 14/35
        let b = Fraction(2,7) // 10/35

        XCTAssertEqual(a * b, Fraction(4,35))
    }

    func testMultitplyDifferentDenominatorsAndAssign() {

        var a = Fraction(2,5) // 14/35
        let b = Fraction(2,7) // 10/35
        a *= b

        XCTAssertEqual(a, Fraction(4,35))
    }

    func testDivideDifferentDenominators() {

        let a = Fraction(4,7)
        let b = Fraction(3,11)

        XCTAssertEqual(a / b, Fraction(44,21))
    }

    func testDivideDifferentDenominatorsAndAssign() {

        var a = Fraction(4,7)
        let b = Fraction(3,11)
        a /= b

        XCTAssertEqual(a, Fraction(44,21))
    }

}
