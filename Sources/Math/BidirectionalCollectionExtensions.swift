//
//  BidirectionalCollectionExtensions
//  Math
//
//  Created by James Bean on 2/16/16.
//  Copyright © 2016 James Bean. All rights reserved.
//

import Algebra

extension Collection where Element: FloatingPoint & Additive {

    /// - Returns: Average of all values contained herein, if there are more than 0 elements.
    /// Otherwise, `nil`.
    public var mean: Element? {
        return isEmpty ? nil : map(Sum.init).sum.value / Element(count)
    }
}

extension Collection where Element: FloatingPoint {
    
}
