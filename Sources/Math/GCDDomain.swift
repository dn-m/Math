//
//  GCDDomain.swift
//  Math
//
//  Created by James Bean on 2/12/17.
//  Copyright © 2017 James Bean. All rights reserved.
//

/// - Returns: Greatest common divisor of `a` and `b`.
public func gcd <I: BinaryInteger> (_ a: I, _ b: I) -> I {
    let result = a % b
    return result == 0 ? b : gcd(b, result)
}

/// - Returns: Least common multiple of `a` and `b`.
public func lcm <I: BinaryInteger> (_ a: I, _ b: I) -> I {
    return (a / gcd(a,b)) * b
}

extension Sequence where Element: BinaryInteger {

    /// Greatest common divisor of elements in Sequence.
    ///
    ///     let gcd = [8,12].gcd // => 4
    ///
    public var gcd: Element {
        return reduce(0, Math.gcd)
    }

    /// Least common multiple of elements in Sequence.
    ///
    ///     let lcm = [4,5,6].lcm // => 60
    ///
    public var lcm: Element {
        return reduce(1, Math.lcm)
    }
}
