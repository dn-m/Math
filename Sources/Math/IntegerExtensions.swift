//
//  IntegerExtensions.swift
//  Math
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
        return !isEven
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

    /// - Returns: `true` if this value if divisible by the given `value`. Otherwise, `false`.
    @available(swift, deprecated: 5.0, message: "Use Swift's built-in `isMultiple(of:)")
    public func isDivisible(by value: Self) -> Bool {
        #if swift(<5.0)
        return self % value == 0
        #else
        return isMultiple(of: value)
        #endif
    }

    /// - returns: `true` if this value is a power of two. Otherwise, `false`.
    public var isPowerOfTwo: Bool {
        return self > 0 && (self & (self - 1) == 0)
    }
}
