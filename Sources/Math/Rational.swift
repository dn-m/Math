//
//  Rational.swift
//  Math
//
//  Created by James Bean on 1/2/17.
//  Copyright © 2017 James Bean. All rights reserved.
//

import Algebra
import Algorithms

/// Model of ratio.
public protocol Rational:
    Additive,
    Multiplicative,
    Strideable,
    SignedNumeric,
    Hashable,
    CustomStringConvertible
{
    // MARK: - Instance Properties

    /// - Returns: The result of dividing the numerator by the denominator.
    var floatValue: Float { get }

    /// - Returns: The result of dividing the numerator by the denominator.
    var doubleValue: Double { get }

    /// Numerator.
    var numerator: Int { get }

    /// Denominator.
    var denominator: Int { get }

    // MARK: - Initializers

    /// Create a `Rational` value with a given `numerator` and `denominator`.
    init(_ numerator: Int, _ denominator: Int)

    // MARK: - Instance Methods

    /// - returns: Representation of a `Rational` value with a given `numerator`, if possible.
    ///
    /// > Preserves the arithmetic value of the original `Rational` value.
    func scaling(numerator: Int) -> Self

    /// - returns: Representation of a `Rational` value with a given `denominator`, if
    /// possible. Assumes the denominator is not 0.
    ///
    /// > Preserves the arithmetic value of the original `Rational` value.
    func scaling(denominator: Int) -> Self

    /// - returns: A new `Rational` value with the given `numerator`, which is no longer
    /// guaranteed to provide the same arithmetic value as before.
    func mutating(numerator: Int) -> Self

    /// - returns: A new `Rational` value with the given `denominator`, which is no longer
    /// guaranteed to provide the same arithmetic value as before.
    func mutating(denominator: Int) -> Self
}

extension Rational {

    // MARK: - Additive

    /// The `zero` value of the `Rational` type, which when added to another `Rational` value
    /// results in a value which is equivalent to the other `Rational` value.
    public static var zero: Self {
        return Self(0,1)
    }
}

extension Rational {

    // MARK: - Multiplicative

    /// The `one` value of the `Rational` type, which when multiplied by another `Rational` value
    /// results in a value which is equivalent to the other `Rational` value.
    public static var one: Self {
        return Self(1,1)
    }
}

extension Rational {

    // MARK: - SignedNumeric

    /// Negate `Rational` type arithmetically.
    public static prefix func - (rational: Self) -> Self {
        return -rational
    }
}

extension Rational {

    // MARK: - Strideable

    /// - Returns: Self advanced by the given `n`.
    public func advanced(by n: Self) -> Self {
        return self + n
    }

    /// - Returns: Distance to the given `other`.
    public func distance(to other: Self) -> Self {
        return other - self
    }
}

extension Rational {

    /// - Returns: Representation of a `Rational` value with a given `numerator`.
    public func scaling(numerator newNumerator: Int) -> Self {
        guard newNumerator != numerator else { return self }
        let quotient = Double(newNumerator) / Double(numerator)
        let newDenominator = Double(denominator) * quotient
        assert(newDenominator.truncatingRemainder(dividingBy: 1) == 0)
        return Self(newNumerator, Int(newDenominator))
    }

    /// - Returns: Representation of a `Rational` value with a given `denominator`.
    public func scaling(denominator newDenominator: Int) -> Self {
        guard newDenominator != denominator else { return self }
        guard numerator != 0 else { return Self(0, newDenominator) }
        let quotient = Double(newDenominator) / Double(denominator)
        let newNumerator = Double(numerator) * quotient
        assert(newNumerator.truncatingRemainder(dividingBy: 1) == 0)
        return Self(Int(newNumerator), newDenominator)
    }
}

extension Rational {

    // MARK: - Numeric

    /// - Returns: A value in which the `numerator` and `denominator` values are inverted.
    ///
    /// - Invariant: `numerator != 0`.
    public var reciprocal: Self {
        return Self(denominator, numerator)
    }

    /// - Returns: The magnitude (`abs`) of this value.
    public var magnitude: Self {
        return Self(abs(denominator), abs(denominator))
    }

    /// Creates a `Rational` with the given `source`.
    public init? <T> (exactly source: T) where T: BinaryInteger {
        self.init(Int(source), 1)
    }

    /// - Returns: Sum of both `Rational` values.
    public static func + (lhs: Self, rhs: Self) -> Self {
        let (a,b) = normalized(lhs, rhs)
        return Self(a.numerator + b.numerator, a.denominator)
    }

    /// Assigns the sum of both `Rational` values to the left-hand-side variable.
    public static func += (lhs: inout Self, rhs: Self) {
        lhs = lhs + rhs
    }

    /// - Returns: Difference of both `Rational` values.
    public static func - (lhs: Self, rhs: Self) -> Self {
        let (a,b) = normalized(lhs, rhs)
        return Self(a.numerator - b.numerator, a.denominator)
    }

    /// Assigns the differnce of both `Rational` values to the left-hand-side variable.
    public static func -= (lhs: inout Self, rhs: Self) {
        lhs = lhs - rhs
    }

    /// - Returns: Product of both `Rational` values.
    public static func * (lhs: Self, rhs: Self) -> Self {
        return Self(lhs.numerator * rhs.numerator, lhs.denominator * rhs.denominator)
    }

    /// Assigns product of both `Rational` values to the left-hand-side variable.
    public static func *= (lhs: inout Self, rhs: Self) {
        lhs = lhs * rhs
    }

    /// - Returns: Quotient of both `Rational` values.
    public static func / (lhs: Self, rhs: Self) -> Self {
        return lhs * rhs.reciprocal
    }

    /// Assigns the quotient of both `Rational` values to the left-hand-side variable.
    public static func /= (lhs: inout Self, rhs: Self) {
        lhs = lhs / rhs
    }
}

extension Rational {

    /// - returns: A new `Rational` value with the given `numerator`, which is no longer
    /// guaranteed to provide the same arithmetic value as before.
    public func mutating(numerator newNumerator: Int) -> Self {
        return Self(newNumerator, denominator)
    }

    /// - returns: A new `Rational` value with the given `denominator`, which is no longer
    /// guaranteed to provide the same arithmetic value as before.
    public func mutating(denominator newDenominator: Int) -> Self {
        return Self(numerator, newDenominator)
    }
}

extension Rational {

    /// - returns: `true` if `self` is equivalent to its most-reduced form.
    public var isReduced: Bool {
        return self == reduced
    }
}

extension Rational {

    /// Float value.
    public var floatValue: Float {
        return Float(numerator) / Float(denominator)
    }

    /// Double value.
    public var doubleValue: Double {
        return Double(numerator) / Double(denominator)
    }
}

extension Rational {

    /// Inverts `denominator` and `numerator` values.
    public var inverse: Self {
        return Self(denominator, numerator)
    }
}

extension Rational {

    /// Reduced version of `self`.
    public var reduced: Self {
        let common = gcd(abs(numerator), abs(denominator))
        let sign = denominator > 0 ? 1 : -1
        return Self((sign * numerator) / common, (sign * denominator) / common)
    }
}

extension Rational {

    // MARK: - Comparable

    /// - returns: `true` if the left `Rational` is less than the right `Rational`. Otherwise,
    /// `false`.
    public static func < (lhs: Self, rhs: Self) -> Bool {
        let (lhs, rhs) = normalized(lhs, rhs)
        return lhs.numerator < rhs.numerator
    }
}

extension Rational {

    // MARK: - Equatable

    /// - returns: Pair of `Rational` values, each in their most-reduced form.
    public static func reduced <R: Rational> (_ a: R, _ b: R) -> (R, R) {
        return (a.reduced, b.reduced)
    }

    /// - returns: Pair of `Rational` values, with common denominators.
    public static func normalized <R: Rational> (_ a: R, _ b: R) -> (R, R) {
        let commonDenominator = lcm(a.denominator, b.denominator)
        return map(a,b) { $0.scaling(denominator: commonDenominator) }
    }

    /// - returns: `true` if both values are equivalent in their most-reduced form.
    public static func == (lhs: Self, rhs: Self) -> Bool {
        let (lhs, rhs) = normalized(lhs, rhs)
        return lhs.numerator == rhs.numerator
    }
}

extension Rational {

    // MARK: - Hashable

    /// Hash value.
    public var hashValue: Int {
        return floatValue.hashValue
    }
}

extension Rational {

    // MARK: - CustomStringConvertible

    /// Printed description.
    public var description: String {
        return "\(numerator)/\(denominator)"
    }
}
