//
//  LinearRegression.swift
//  Math
//
//  Created by James Bean on 11/8/16.
//  Copyright © 2016 James Bean. All rights reserved.
//

import Darwin
import Algebra

/// - Returns: All values of `lhs` multiplied by the corresponding value in `rhs`.
///
/// - Note: As with `zip`, this operation is finished as soon as the end of the shorter sequence is
/// reached.
public func * <S,T> (lhs: S, rhs: T) -> [S.Element]
    where S: Sequence, T: Sequence, S.Element: Numeric, S.Element == T.Element
{
    return zip(lhs,rhs).map(*)
}

/// - Returns: A function that will calculate the y-value for the given x-value on the regression.
public func linearRegression <F> (_ dataSet: [F: F]) -> (F) -> F where F: FloatingPoint & Additive {
    precondition(!dataSet.isEmpty)
    return linearRegression(dataSet.keys, dataSet.values)
}

/// - Returns: Function that will calculate the y-value for the given x-value on the
///     regression.
///
/// - Note: Modified from: [Ray Wenderlich Swift Algorithm Club](https://github.com/raywenderlich/swift-algorithm-club/tree/master/Linear%20Regression)
func linearRegression <F,C,D> (_ xs: C, _ ys: D) -> (F) -> (F)
    where F: FloatingPoint & Additive, C: Collection, D: Collection, C.Element == F, D.Element == F
{
    assert(!xs.isEmpty && !ys.isEmpty)
    let m = slope(xs,ys)
    let b = ys.mean! - (m * xs.mean!)
    return { x in m * x + b }
}

/// - Returns: Slope of linear regression of given x-values and y-values.
func slope <F,C,D> (_ xs: C, _ ys: D) -> F
    where F: FloatingPoint & Additive, C: Collection, D: Collection, C.Element == F, D.Element == F
{
    assert(!xs.isEmpty && !ys.isEmpty)
    let (xMean,yMean) = (xs.mean!,ys.mean!)
    return ((xs * ys).mean! - (xMean * yMean)) / (xs.squared.mean! - xMean * xMean)
}

extension Sequence where Element: Numeric {

    /// - Returns: All given values risen to the power of two.
    var squared: [Element] {
        return map { $0 * $0 }
    }
}
