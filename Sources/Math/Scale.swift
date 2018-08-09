//
//  BinaryFloatingPointExtensions.swift
//  Math
//
//  Created by James Bean on 5/7/17.
//  Copyright © 2017 James Bean. All rights reserved.
//

import Darwin

extension FloatingPoint {

    /// Scales self from the given `source` range to the given `destination` range.
    ///
    /// - Parameter source: The range from which this value is being scaled
    /// - Parameter destination: The range to which this value is being scaled
    ///
    ///     var value = 7.0
    ///     value.scaled(from: 5.0...10.0, to: 5.0...15.0) // => 9.0
    ///
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

    /// - Returns: A value scaled from the given `source` range to the given `destination` range.
    ///
    /// - Parameter source: The range from which this value is being scaled
    /// - Parameter destination: The range to which this value is being scaled
    ///
    ///     let initial = 2.0
    ///     let scaled = initial.scaled(from: 0.0...10.0, to: 5.0...10.) // => 6.0
    ///
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
