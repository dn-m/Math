//
//  LinearRegression.swift
//  Math
//
//  Created by James Bean on 11/8/16.
//  Copyright © 2016 James Bean. All rights reserved.
//

import Darwin
import Algebra

/// - Returns: All given values risen to the power of two.
public func squared <S> (_ values: S) -> [S.Element] where S: Sequence, S.Element: Numeric {
    return values.map { $0 * $0 }
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
public func slope <C> (_ xs: C, _ ys: C) -> C.Element where C: Collection, C.Element == Float {
    let sum1 = (xs * ys).mean! - (xs.mean! * ys.mean!)
    let sum2 = squared(xs).mean! - pow(xs.mean!, 2)
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
public func slope(_ dictionary: [Float: Float]) -> Float {
    return slope(Array(dictionary.keys), Array(dictionary.values))
}

/// - returns: Function that will calculate the y-value for the given x-value on the regression.
public func linearRegression(_ dictionary: [Float: Float]) -> (Float) -> Float {
    return linearRegression(Array(dictionary.keys), Array(dictionary.values))
}
