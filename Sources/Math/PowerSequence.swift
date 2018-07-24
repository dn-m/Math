//
//  PowerSequence.swift
//  Math
//
//  Created by James Bean on 3/2/16.
//  Copyright © 2016 James Bean. All rights reserved.
//

/// Power-of-two Sequence.
public class PowerSequence<T: FixedWidthInteger>: Sequence {

    // MARK: - Associated Types

    /// PowerGenerator generates ArithmeticType values.
    public typealias Iterator = PowerGenerator<T>

    // MARK: - Instance Properties

    let doOvershoot: Bool
    let coefficient: T
    let max: T

    // MARK: - Initializers

    /// Create a PowerSequence.
    ///
    /// - Parameter coefficient: Coefficient that multiplies base of exponential expression
    /// - Parameter max:         Maximum value of generated powers-of-two
    /// - Parameter doOvershoot: If sequence includes the next power-of-two greater than max
    ///
    /// - Returns: Initialized PowerSequence
    public init(coefficient: T = 2, max: T = T.max, doOvershoot: Bool = false) {
        self.coefficient = coefficient
        self.max = max
        self.doOvershoot = doOvershoot
    }

    // MARK: - Instance Methods

    /// Generate sequence of powers-of-two.
    ///
    /// - Returns: PowerGenerator
    public func makeIterator() -> Iterator {
        return PowerGenerator(coefficient: coefficient, max: max, doOvershoot: doOvershoot)
    }
}
