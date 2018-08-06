//
//  Proximity.swift
//  Algebra
//
//  Created by James Bean on 8/6/18.
//

/// Get the closer of two values to a target value.
///
/// >`closer(to: 11, a: 12, b: 3) -> 12`
///
/// - note: If the distances between both values and the target value are equivalent, the first
/// value (a) is returned.
///
/// >`closer(to: 6, a: 4, b: 8) -> 4`
///
/// - Returns: Value closer to target value
public func closer <T> (to target: T, a: T, b: T) -> T where T: SignedNumeric & Comparable {
    return abs(a - target) <= abs(b - target) ? a : b
}

extension Sequence where Element: SignedNumeric & Comparable {

    /// Get the closest value in Array to target value.
    ///
    /// - Parameter target: Value to check for closest component
    ///
    /// - Returns: Value closest to target is `!self.isEmpty`. Otherwise nil.
    public func closest(to target: Element) -> Element? {
        return self.min { abs(target - $0) < abs(target - $1) }
    }
}
