//
//  BidirectionalCollectionExtensions
//  Math
//
//  Created by James Bean on 2/16/16.
//  Copyright © 2016 James Bean. All rights reserved.
//

import Algebra

extension BidirectionalCollection where Element: SignedNumeric & Comparable {

    /**
     Get the closest value in Array to target value.

     - parameter target: Value to check for closest component

     - returns: Value closest to target is !self.isEmpty. Otherwise nil.
     */
    public func closest(to target: Element) -> Element? {

        guard !self.isEmpty else {
            return nil
        }

        var cur = self.first!
        var diff = abs(target - cur)
        for el in self {
            let newDiff = abs(target - el)
            if newDiff < diff {
                diff = newDiff
                cur = el
            }
        }

        return cur
    }
}

extension BidirectionalCollection where Element: FloatingPoint & Additive, IndexDistance == Int {

    /// - returns: Average of all values contained herein, if there are more than 0 elements.
    /// Otherwise, `nil`.
    public var mean: Iterator.Element? {
        return isEmpty ? nil : sum / Element(count)
    }
}
