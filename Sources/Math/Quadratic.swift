//
//  Quadratic.swift
//  Math
//
//  Created by James Bean on 2/12/17.
//  Copyright © 2017 James Bean. All rights reserved.
//

import Darwin

/// - Returns: A set of 0, 1, or 2 results of the quadratic equation for the given coefficients.
///
/// **Example Usage**
///
/// For a given equation `ax^2 + bx + c`, you can plug `a`, `b`, and `c` into the quadratic
/// equation.
///
/// For the given equataion `2x^2 + x + 3`, you would call:
///
///     let results = quadratic(2,1,3) // => []
///
/// In this case, there are no results.
///
/// For the given equation `5x^2 + 6x + 1`, you would call:
///
///     let results = quadratic(5,6,1) // => [-1, -0.2]
///
/// In this case, there are two results.
///
public func quadratic <T: FloatingPoint> (_ a: T, _ b: T, _ c: T) -> Set<T> {
    let discriminant = b * b - 4 * a * c
    guard discriminant > 0 else { return [] }
    let denominator = 2 * a
    let pos: T = (-b + sqrt(discriminant)) / denominator
    let neg: T = (-b - sqrt(discriminant)) / denominator
    return [pos,neg]
}
