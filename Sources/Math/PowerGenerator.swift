//
//  PowerGenerator.swift
//  Math
//
//  Created by James Bean on 3/2/16.
//  Copyright © 2016 James Bean. All rights reserved.
//

/// Power-of-two Generator
public class PowerGenerator <T: BinaryInteger>: IteratorProtocol {

    // MARK: - Associated Types

    /// This GeneratorType generates ArithmeticType values
    public typealias Element = T

    // MARK: - Instance Properties

    private var hasOvershot: Bool = false
    private var power: T

    let doOvershoot: Bool
    let coefficient: T
    let max: T?

    // MARK: - Initializers

    /// Create a PowerGenerator.
    ///
    /// - Parameter coefficient: Coefficient that multiplies base of exponential expression
    /// - Parameter max:         Maximum value of generated powers-of-two
    /// - Parameter doOvershoot: If generator includes the next power-of-two greater than max
    ///
    /// - Returns: Initialized PowerGenerator
    ///
    public init(coefficient: T, max: T? = nil, doOvershoot: Bool = false) {
        self.power = coefficient
        self.coefficient = coefficient
        self.max = max
        self.doOvershoot = doOvershoot
    }

    // MARK: - Instance Methods

    /// Advance to the next element and return it, or nil if no next element exists.
    public func next() -> Element? {
        if doOvershoot {
            if hasOvershot { return nil }
            if power > max {
                hasOvershot = true
                return power
            }
        }
        let result = power
        power = power * 2
        if let max = max { return result <= max ? result : nil }
        return result
    }
}

func < <T: Comparable> (lhs: T?, rhs: T?) -> Bool {
    switch (lhs, rhs) {
    case let (l?, r?):
        return l < r
    case (nil, _?):
        return true
    default:
        return false
    }
}

func > <T: Comparable> (lhs: T?, rhs: T?) -> Bool {
    switch (lhs, rhs) {
    case let (l?, r?):
        return l > r
    default:
        return rhs < lhs
    }
}
