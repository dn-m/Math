//
//  DoubleExtensions.swift
//  Math
//
//  Created by Brian Heim on 6/26/17.
//  Copyright © 2017 James Bean. All rights reserved.
//

import Darwin

extension Double {

    /// Exponentially scales a `Double` from the given `source` to the given
    /// `destination`.
    ///
    #warning("""
    Abstract Double.scale(from:to:) over `FloatingPoint`. This requires writing a `pow(_:)` which
    is generic over `FloatingPoint` values.
    """)
    public mutating func scale(
        from source: ClosedRange<Double>,
        toExponential destination: ClosedRange<Double>
    )
    {
        let sourceWidth = source.upperBound - source.lowerBound
        let destinationRatio = destination.upperBound / destination.lowerBound
        let position = (self - source.lowerBound) / sourceWidth
        self = pow(destinationRatio, position) * destination.lowerBound
    }

    /// - returns: A `Double` value scaled from the given `source` range to the
    /// given `destination` range.
    ///
    #warning("""
    Abstract Double.scaled(from:to:) over `FloatingPoint`. This requires writing a `pow(_:)` which
    is generic over `FloatingPoint` values.
    """)
    public func scaled(
        from source: ClosedRange<Double>,
        toExponential destination: ClosedRange<Double>
    ) -> Double
    {
        var copy = self
        copy.scale(from: source, toExponential: destination)
        return copy
    }
}
