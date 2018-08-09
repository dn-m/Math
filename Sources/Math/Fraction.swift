//
//  Fraction.swift
//  Math
//
//  Created by James Bean on 7/18/17.
//  Copyright © 2017 James Bean. All rights reserved.
//

/// A representation of a `Fraction`.
///
/// *Example Usage*
///
/// Create a fraction.
///
///     let fraction = Fraction(5,13)
///
/// The `Fraction` is the most basic implementation of the `Rational` protocol, with the only added
/// invariant that the `denominator` is not `0`.
///
/// - Warning: Your program will trap if you give a value of `0` for the denominator.
///
public struct Fraction: Rational {

    /// Numerator.
    public let numerator: Int

    /// Denominator.
    public let denominator: Int

    // MARK: - Initializers

    /// Creates a `Fraction` value with a given `numerator` and `denominator`.
    public init(_ numerator: Int, _ denominator: Int) {
        precondition(denominator != 0, "Cannot create a Fraction with denominator of 0")
        self.numerator = numerator
        self.denominator = denominator
    }

    /// Creates a `Fraction` value with the given `rational` value.
    ///
    /// You may have created your own `Rational`-conforming type (e.g., `MetricalDuration`, etc.)
    /// which adds its own invariants to the `Rational` type. It may be useful to generalize your
    /// type to another `Rational` representation with less constraints.
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
