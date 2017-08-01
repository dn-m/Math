//
//  BinaryFloatingPointExtensions.swift
//  ArithmeticTools
//
//  Created by James Bean on 5/7/17.
//  Copyright © 2017 James Bean. All rights reserved.
//

import Darwin

extension BinaryFloatingPoint {

    /// Scales a `BinaryFloatingPoint` from the given `sourceRange` to the given
    /// `destinationRange`.
    public mutating func scale(
        from source: ClosedRange<Self>,
        to destination: ClosedRange<Self>
    )
    {
        let sourceWidth = source.upperBound - source.lowerBound
        let destinationWidth = destination.upperBound - destination.lowerBound
        let position = (self - source.lowerBound) / sourceWidth
        self = position * destinationWidth + destination.lowerBound
    }

    /// - returns: A `BinaryFloatingPoint` value scaled from the given `sourceRange` to the
    /// given `destinationRange`.
    public func scaled(
        from sourceRange: ClosedRange<Self>,
        to destinationRange: ClosedRange<Self>
    ) -> Self
    {
        var copy = self
        copy.scale(from: sourceRange, to: destinationRange)
        return copy
    }
}
