//
//  Functions.swift
//  Math
//
//  Created by James Bean on 2/16/16.
//  Copyright © 2016 James Bean. All rights reserved.
//

import Darwin

/**
 Get the closer of two values to a target value.

 >`closer(to: 11, a: 12, b: 3) -> 12`

 - note: If the distances between both values and the target value are equivalent, the first
 value (a) is returned.

 >`closer(to: 6, a: 4, b: 8) -> 4`

 - returns: Value closer to target value
 */
public func closer <T: SignedNumeric & Comparable> (to target: T, a: T, b: T) -> T {
    return abs(a - target) <= abs(b - target) ? a : b
}

/**
 - note: If both values are equal, they are returned in the order in which they were given

 - returns: 2-tuple of two `Comparable` types, in order.
 */
public func ordered <T: Comparable> (_ a: T, _ b: T) -> (T, T) {
    return a <= b ? (a,b) : (b,a)
}

/// - returns: The average to the two given values.
public func mean <F: FloatingPoint> (_ a: F, _ b: F) -> F {
    return (a + b) / 2
}

/// - returns: "True" modulo (not "remainder", which is implemented by Swift's `%`).
public func mod <T: BinaryInteger> (_ dividend: T, _ modulus: T) -> T {
    let result = dividend % modulus
    return result < 0 ? result + modulus : result
}

/// - returns: "True" modulo (not "remainder", which is implemented by Swift's `%`).
public func mod <T: FloatingPoint> (_ dividend: T, _ modulus: T) -> T {
    let result = dividend.truncatingRemainder(dividingBy: modulus)
    return result < 0 ? result + modulus : result
}
