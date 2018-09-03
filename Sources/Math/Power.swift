//
//  Power.swift
//  Math
//
//  Created by James Bean on 3/2/16.
//  Copyright © 2016 James Bean. All rights reserved.
//

import DataStructures

/// - Returns: A sequence of powers-of-two up to the given `max` value.
@inlinable
public func powersOfTwo <T: FixedWidthInteger> (
    upTo max: T = .max,
    overshooting doOvershoot: Bool = false
) -> PowerOfTwoSequence<T>
{
    return PowerOfTwoSequence(max: max, doOvershoot: doOvershoot)
}

/**
 >`closestPowerOfTwo(to: 13) -> 16`

 - note: If two values are equidistant from the target value, the lesser value is returned.

 >`closestPowerOfTwo(to: 12) -> 8 (not 16)`

 - returns: Power-of-two value closest to target value
 */
@inlinable
public func closestPowerOfTwo(to target: Int) -> Int? {
    return closestPowerOfTwo(coefficient: 2, to: target)
}

/**
 - returns: Power-of-two value closest to and less than target value
 */
@inlinable
public func closestPowerOfTwo(under target: Int) -> Int? {
    return closestPowerOfTwo(coefficient: 2, under: target)
}

/**
 >`closestPowerOfTwo(coefficient: 3, to: 22) -> 24`

 - note: If two values are equidistant from the target value, the lesser value is returned.

 >`closestPowerOfTwo(coefficient: 3, to: 18) -> 12 (not 24)`

 - parameter coefficient: Coefficient of exponential expression
 - parameter target:      Value to check for closest power-of-two

 - returns: Power-of-two value (with coefficient) closest to target value
 */
@inlinable
public func closestPowerOfTwo(coefficient: Int, to target: Int) -> Int? {
    let sequence = PowerOfTwoSequence(coefficient: coefficient, max: target, doOvershoot: true)
    return closer(to: sequence, target: target)
}

/// - returns: Power-of-two (with coefficient) closest to and less than target value
@inlinable
public func closestPowerOfTwo(coefficient: Int, under target: Int) -> Int? {
    let sequence = PowerOfTwoSequence(coefficient: coefficient, max: target, doOvershoot: false)
    return closer(to: sequence, target: target)
}

@usableFromInline
func closer(to powers: PowerOfTwoSequence<Int>, target: Int) -> Int? {
    let powers = powers.reversed()
    guard powers.count > 0 else { return nil }
    guard powers.count > 1 else { return powers[0] }
    return closer(to: target, a: powers[1], b: powers[0])
}
