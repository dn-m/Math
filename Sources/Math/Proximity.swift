//
//  Proximity.swift
//  Algebra
//
//  Created by James Bean on 8/6/18.
//

///     let _ = closer(to: 11, a: 12, b: 3) // => 12
///     let _ = closer(to: 6, a: 4, b: 8) // => 4
///
/// - Parameter target: Target value
/// - Parameter a: First value to check proximity to target value
/// - Parameter b: First value to check proximity to target value
///
/// - Note: If the distances between both values and the target value are equivalent, the first
/// value (a) is returned.
///
/// - Returns: Value closer to target value
public func closer <T> (to target: T, a: T, b: T) -> T where T: SignedNumeric & Comparable {
    return abs(a - target) <= abs(b - target) ? a : b
}

extension Sequence where Element: SignedNumeric & Comparable {

    /// - Parameter target: Value to check for closest component
    ///
    /// - Returns: Value closest to target if `!self.isEmpty`. Otherwise nil.
    public func closest(to target: Element) -> Element? {
        return self.min { abs(target - $0) < abs(target - $1) }
    }
}
