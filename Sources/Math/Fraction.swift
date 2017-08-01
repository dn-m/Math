//
//  Fraction.swift
//  Math
//
//  Created by James Bean on 7/18/17.
//  Copyright © 2017 James Bean. All rights reserved.
//

/// Fraction structure.
public struct Fraction: Rational {

    /// Numerator.
    public let numerator: Int

    /// Denominator.
    public let denominator: Int

    // MARK: - Initializers

    /// Creates a `Fraction` value with a given `numerator` and `denominator`.
    public init(_ numerator: Int, _ denominator: Int) {

        assert(denominator != 0, "Cannot create a Fraction with denominator of 0")

        self.numerator = numerator
        self.denominator = denominator
    }

    /// Creates a `Fraction` value with the given `rational` value.
    public init <R: Rational> (_ rational: R) {
        self.numerator = rational.numerator
        self.denominator = rational.denominator
    }
}

extension Fraction: ExpressibleByIntegerLiteral {

    /// Create a `Fraction` with an intger literal.
    public init(integerLiteral value: Int) {
        self.init(value, 1)
    }
}
