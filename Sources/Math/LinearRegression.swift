//
//  LinearRegression.swift
//  Math
//
//  Created by James Bean on 11/8/16.
//  Copyright © 2016 James Bean. All rights reserved.
//

import Darwin
import Algebra

extension Sequence where Element: Numeric {

    /// - Returns: All given values risen to the power of two.
    var squared: [Element] {
        return map { $0 * $0 }
    }
}

/// - Returns: All values of `lhs` multiplied by the corresponding value in `rhs`.
///
/// - Note: As with `zip`, this operation is finished as soon as the end of the shorter sequence is
/// reached.
public func * <S,T> (lhs: S, rhs: T) -> [S.Element]
    where S: Sequence, T: Sequence, S.Element: Numeric, S.Element == T.Element
{
    return zip(lhs,rhs).map(*)
}

/// - returns: Slope of linear regression of given x-values and y-values.
public func slope <C,D> (_ xs: C, _ ys: D) -> C.Element
    where C: Collection, D: Collection, C.Element == Float, D.Element == Float {
    let sum1 = (xs * ys).mean! - (xs.mean! * ys.mean!)
    let sum2 = xs.squared.mean! - pow(xs.mean!, 2)
    return sum1 / sum2
}

/// - returns: Function that will calculate the y-value for the given x-value on the
///     regression.
///
/// - note: Modified from: [Ray Wenderlich Swift Algorithm Club](https://github.com/raywenderlich/swift-algorithm-club/tree/master/Linear%20Regression)
public func linearRegression (_ xs: [Float], _ ys: [Float]) -> (Float) -> (Float) {

    guard !(xs.isEmpty || ys.isEmpty) else { return { _ in 0 } }

    let m = slope(xs,ys)
    let intercept = ys.mean! - (m * xs.mean!)

    return { x in m * x + intercept }
}

/// - returns: Slope of the linear regression.
public func slope(_ dataSet: [Float: Float]) -> Float {
    return slope(Array(dataSet.keys), Array(dataSet.values))
}

/// - returns: Function that will calculate the y-value for the given x-value on the regression.
public func linearRegression(_ dataSet: [Float: Float]) -> (Float) -> Float {
    return linearRegression(Array(dataSet.keys), Array(dataSet.values))
}
