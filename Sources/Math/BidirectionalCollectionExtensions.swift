//
//  BidirectionalCollectionExtensions
//  Math
//
//  Created by James Bean on 2/16/16.
//  Copyright © 2016 James Bean. All rights reserved.
//

import Algebra

extension BidirectionalCollection where Element: FloatingPoint & Additive {

    /// - Returns: Average of all values contained herein, if there are more than 0 elements.
    /// Otherwise, `nil`.
    public var mean: Iterator.Element? {
        return isEmpty ? nil : sum / Element(count)
    }
}
