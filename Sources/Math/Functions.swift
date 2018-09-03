//
//  Functions.swift
//  Math
//
//  Created by James Bean on 2/16/16.
//  Copyright © 2016 James Bean. All rights reserved.
//

/// - Returns: The average to the two given values.
@inlinable
public func mean <F: FloatingPoint> (_ a: F, _ b: F) -> F {
    return (a + b) / 2
}

/// - Returns: Divisor modulo (as opposed to the remainder implemented by Swift's `%` operator).
@inlinable
public func mod <T: BinaryInteger> (_ dividend: T, _ modulus: T) -> T {
    let result = dividend % modulus
    return result < 0 ? result + modulus : result
}

/// - Returns: Divisor modulo (as opposed to the remainder implemented by Swift's `%` operator).
@inlinable
public func mod <T: FloatingPoint> (_ dividend: T, _ modulus: T) -> T {
    let result = dividend.truncatingRemainder(dividingBy: modulus)
    return result < 0 ? result + modulus : result
}
