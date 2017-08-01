//
//  IntegerExtensions.swift
//  ArithmeticTools
//
//  Created by James Bean on 12/1/16.
//  Copyright © 2016 James Bean. All rights reserved.
//

extension BinaryInteger {

    /// - returns: `true` if this value is divisible by 2. Otherwise, `false`
    public var isEven: Bool {
        return isDivisible(by: 2)
    }

    /// - returns: `true` if this value is not divisible by 2. Otherwise, `false`.
    public var isOdd: Bool {
        return self % 2 != 0
    }

    /// - returns: `true` if this value is a prime number. Otherwise, `false`.
    public var isPrime: Bool {

        guard self > 1 else {
            return false
        }

        guard self > 3 else {
            return true
        }

        var i: Self = 2
        while i * i <= self {
            if self % i == 0 {
                return false
            }
            i = i + 1
        }
        return true
    }

    /// - returns: `true` if this value if divisible by the given `value`. Otherwise, `false`.
    public func isDivisible(by value: Self) -> Bool {
        return self % value == 0
    }

    /// - returns: `true` if this value is a power of two. Otherwise, `false`.
    public var isPowerOfTwo: Bool {
        return self > 0 && (self & (self - 1) == 0)
    }
}
