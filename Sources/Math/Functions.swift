//
//  Functions.swift
//  Math
//
//  Created by James Bean on 2/16/16.
//  Copyright © 2016 James Bean. All rights reserved.
//

import Darwin

/// - Note: If both values are equal, they are returned in the order in which they were given
///
/// - Returns: 2-tuple of two `Comparable` types, in order.
public func ordered <T: Comparable> (_ a: T, _ b: T) -> (T, T) {
    return a <= b ? (a,b) : (b,a)
}

/// - Returns: The average to the two given values.
public func mean <F: FloatingPoint> (_ a: F, _ b: F) -> F {
    return (a + b) / 2
}

/// - Returns: Divisor modulo (as opposed to the dividend implemented by Swift's `%` operator).
public func mod <T: BinaryInteger> (_ dividend: T, _ modulus: T) -> T {
    let result = dividend % modulus
    return result < 0 ? result + modulus : result
}

/// - Returns: Divisor modulo (as opposed to the dividend implemented by Swift's `%` operator).
public func mod <T: FloatingPoint> (_ dividend: T, _ modulus: T) -> T {
    let result = dividend.truncatingRemainder(dividingBy: modulus)
    return result < 0 ? result + modulus : result
}
