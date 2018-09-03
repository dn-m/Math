//
//  PowerOfTwoSequence.swift
//  Math
//
//  Created by James Bean on 3/2/16.
//  Copyright © 2016 James Bean. All rights reserved.
//

/// Power-of-two Sequence.
public struct PowerOfTwoSequence <T: FixedWidthInteger>: Sequence {

    // MARK: - Instance Properties

    private var power: T
    private var hasOvershot: Bool = false

    let doOvershoot: Bool
    let coefficient: T
    let max: T
}

extension PowerOfTwoSequence {

    // MARK: - Initializers

    /// Create a PowerOfTwoSequence.
    ///
    /// - Parameter coefficient: Coefficient that multiplies base of exponential expression
    /// - Parameter max:         Maximum value of generated powers-of-two
    /// - Parameter doOvershoot: If sequence includes the next power-of-two greater than max
    ///
    /// - Returns: Initialized PowerOfTwoSequence
    public init(coefficient: T = 2, max: T = T.max, doOvershoot: Bool = false) {
        self.coefficient = coefficient
        self.max = max
        self.doOvershoot = doOvershoot
        self.power = coefficient
    }
}

extension PowerOfTwoSequence: IteratorProtocol {

    // MARK: - IteratorProtocol

    /// - Returns: The next value in the power-of-two sequence
    public mutating func next() -> T? {
        if doOvershoot {
            if hasOvershot { return nil }
            if power > max {
                hasOvershot = true
                return power
            }
        }
        let result = power
        let (maybeOverflowingPower, didOverflow) = power.multipliedReportingOverflow(by: 2)
        guard !didOverflow else { return nil }
        self.power = maybeOverflowingPower
        return result <= max ? result : nil
    }
}

