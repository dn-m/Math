//
//  Vector2.swift
//  ArithmeticTools
//
//  Created by James Bean on 6/4/17.
//  Copyright © 2017 James Bean. All rights reserved.
//

import Darwin

/// Two-dimensional Vector.
public struct Vector2 {

    // MARK: - Instance Properties

    /// Length of a `Vector2`
    public var length: Double {
        return hypot(x,y)
    }

    /// X value.
    public let x: Double

    /// Y value.
    public let y: Double

    // MARK: - Initializers

    /// Creates a `Vector2` with the given `x` and `y` values.
    public init(x: Double, y: Double) {
        self.x = x
        self.y = y
    }
}
