//
//  IntervalRelationTests.swift
//  ArithmeticTools
//
//  Created by James Bean on 2/10/17.
//  Copyright © 2017 James Bean. All rights reserved.
//

import XCTest
import ArithmeticTools

class IntervalRelationTests: XCTestCase {

    func testPrecedes() {

        let a = 1...2
        let b = 4...5

        XCTAssertEqual(a.relation(with: b), .precedes)
    }

    func testMeets() {

        let a = 1...2
        let b = 2...3

        XCTAssertEqual(a.relation(with: b), .meets)
    }

    func testOverlaps() {

        let a = 1...3
        let b = 2...4

        XCTAssertEqual(a.relation(with: b), .overlaps)
    }

    func testFinishedBy() {

        let a = 1...4
        let b = 3...4

        XCTAssertEqual(a.relation(with: b), .finishedBy)
    }

    func testContains() {

        let a = 1...4
        let b = 2...3

        XCTAssertEqual(a.relation(with: b), .contains)
    }

    func testStarts() {

        let a = 1...2
        let b = 1...4

        XCTAssertEqual(a.relation(with: b), .starts)
    }

    func testEquals() {

        let a = 1...2
        let b = 1...2

        XCTAssertEqual(a.relation(with: b), .equals)
        XCTAssertEqual(b.relation(with: a), .equals)
    }

    func testStartedBy() {

        let a = 1...4
        let b = 1...2

        XCTAssertEqual(a.relation(with: b), .startedBy)
    }

    func testDuring() {

        let a = 2...3
        let b = 1...4

        XCTAssertEqual(a.relation(with: b), .containedBy)
    }

    func testFinishes() {

        let a = 3...4
        let b = 1...4

        XCTAssertEqual(a.relation(with: b), .finishes)
    }

    func testOverlappedBy() {

        let a = 2...4
        let b = 1...3

        XCTAssertEqual(a.relation(with: b), .overlappedBy)
    }

    func testMetBy() {

        let a = 2...3
        let b = 1...2

        XCTAssertEqual(a.relation(with: b), .metBy)
    }

    func testPrecededBy() {

        let a = 4...5
        let b = 1...2

        XCTAssertEqual(a.relation(with: b), .precededBy)
    }

    func testInverseOfEqualsIsEquals() {

        let equals = IntervalRelation.equals

        XCTAssertEqual(equals.inverse, equals)
    }

    func testInverseOfPrecedesIsPrecededBy() {

        let precedes = IntervalRelation.precedes
        let precededBy = IntervalRelation.precededBy

        XCTAssertEqual(precedes.inverse, precededBy)
        XCTAssertEqual(precededBy.inverse, precedes)
    }

    func testInverseOfContainedByIsContains() {

        let contains = IntervalRelation.contains
        let containedBy = IntervalRelation.containedBy

        XCTAssertEqual(containedBy.inverse, contains)
        XCTAssertEqual(contains.inverse, containedBy)
    }

    func testDescriptionPrecedes() {

        let ir = IntervalRelation.precedes
        let expected = "precedes"

        XCTAssertEqual(ir.description, expected)
    }

    func testDescriptionMeets() {

        let ir = IntervalRelation.meets
        let expected = "meets"

        XCTAssertEqual(ir.description, expected)
    }

    func testDescriptionOverlaps() {

        let ir = IntervalRelation.overlaps
        let expected = "overlaps"

        XCTAssertEqual(ir.description, expected)
    }

    func testDescriptionFinishedBy() {

        let ir = IntervalRelation.finishedBy
        let expected = "finishedBy"

        XCTAssertEqual(ir.description, expected)
    }

    func testDescriptionContains() {

        let ir = IntervalRelation.contains
        let expected = "contains"

        XCTAssertEqual(ir.description, expected)
    }

    func testDescriptionStarts() {

        let ir = IntervalRelation.starts
        let expected = "starts"

        XCTAssertEqual(ir.description, expected)
    }

    func testDescriptionEquals() {

        let ir = IntervalRelation.equals
        let expected = "equals"

        XCTAssertEqual(ir.description, expected)
    }

    func testDescriptionStartedBy() {

        let ir = IntervalRelation.startedBy
        let expected = "startedBy"

        XCTAssertEqual(ir.description, expected)
    }

    func testDescriptionDuring() {

        let ir = IntervalRelation.containedBy
        let expected = "containedBy"

        XCTAssertEqual(ir.description, expected)
    }

    func testDescriptionFinishes() {

        let ir = IntervalRelation.finishes
        let expected = "finishes"

        XCTAssertEqual(ir.description, expected)
    }

    func testDescriptionOverlappedBy() {

        let ir = IntervalRelation.overlappedBy
        let expected = "overlappedBy"

        XCTAssertEqual(ir.description, expected)
    }

    func testDescriptionMetBy() {

        let ir = IntervalRelation.metBy
        let expected = "metBy"

        XCTAssertEqual(ir.description, expected)
    }

    func testDescriptionPrecededBy() {

        let ir = IntervalRelation.precededBy
        let expected = "precededBy"

        XCTAssertEqual(ir.description, expected)
    }

    func testDescriptionRawValue() {

        let ir = IntervalRelation(rawValue: 1 << 13)
        let expected = "Unknown IntervalRelation: 8192"

        XCTAssertEqual(ir.description, expected)
    }

    func testUnionSeparate() {

        let left = 1...2
        let right = 3...4

        XCTAssertEqual(left + right, 1...4)
        XCTAssertEqual(right + left, 1...4)
    }

    func testUnionMeeting() {

        let left = 1...2
        let right = 2...4

        XCTAssertEqual(left + right, 1...4)
        XCTAssertEqual(right + left, 1...4)
    }

    func testUnionOverlapping() {

        let left = 1...3
        let right = 2...4

        XCTAssertEqual(left + right, 1...4)
        XCTAssertEqual(right + left, 1...4)
    }

    func testUnionEqual() {

        let left = 1...8
        let right = 1...8

        XCTAssertEqual(left + right, 1...8)
        XCTAssertEqual(right + left, 1...8)
    }

}
