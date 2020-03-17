//
//  Coprime.swift
//  Math
//
//  Created by James Bean on 3/17/20.
//

/// - Returns: `true` if the given values are coprime. Otherwise, `false`.
public func coprime <I: BinaryInteger> (_ a: I, _ b: I) -> Bool { gcd(a,b) == 1 }
