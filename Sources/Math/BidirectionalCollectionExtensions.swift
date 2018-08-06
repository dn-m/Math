//
//  BidirectionalCollectionExtensions
//  Math
//
//  Created by James Bean on 2/16/16.
//  Copyright © 2016 James Bean. All rights reserved.
//

import Algebra

extension Sequence where Element: SignedNumeric & Comparable {

    /// Get the closest value in Array to target value.
    ///
    /// - Parameter target: Value to check for closest component
    ///
    /// - Returns: Value closest to target is !self.isEmpty. Otherwise nil.
    public func closest(to target: Element) -> Element? {
        return lazy.map { ($0, abs(target - $0)) }.min { $0.1 < $1.1 }.map { $0.0 }
    }
}

extension BidirectionalCollection where Element: FloatingPoint & Additive {

    /// - Returns: Average of all values contained herein, if there are more than 0 elements.
    /// Otherwise, `nil`.
    public var mean: Iterator.Element? {
        return isEmpty ? nil : sum / Element(count)
    }
}
