//
//  Quadratic.swift
//  Math
//
//  Created by James Bean on 2/12/17.
//  Copyright © 2017 James Bean. All rights reserved.
//

import Darwin

/// - Returns: A set of 0, 1, or 2 results of the quadratic equation for the given coefficients.
public func quadratic <T: FloatingPoint> (_ a: T, _ b: T, _ c: T) -> Set<T> {
    let discriminant = b * b - 4 * a * c
    guard discriminant > 0 else { return [] }
    let denominator = 2 * a
    let pos: T = (-b + sqrt(discriminant)) / denominator
    let neg: T = (-b - sqrt(discriminant)) / denominator
    return [pos,neg]
}
